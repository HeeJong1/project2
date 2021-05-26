<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>페이앱 결제요청 팝업</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="http://lite.payapp.kr/public/ico/favicon.ico">
    <link rel="stylesheet" href="http://lite.payapp.kr/public/css/common.css" type="text/css">
    <link rel="stylesheet" href="http://lite.payapp.kr/public/css/pay.css" type="text/css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://lite.payapp.kr/public/js/common.js"></script>
    <script src="http://lite.payapp.kr/public/js/security.js"></script>
    <script>
        var $window = $(window);
    </script>
    <!-- style -->
    <style type="text/css">
        #content-usage {
            margin-bottom: 10px;
            text-align: center;
        }

        #content-payment .price {
            color: #b94a48;
            width: 100px;
        }

        .content-toggle {
            display: none;
        }

        #content-inner.payment #content-payment {
            display: block;
        }
    </style>
    <!-- /style -->

    <script>
        function CashOk() { // 추가 완료
            alert("정상적으로 결제 되었습니다.");
        }
        
    </script>

    <!-- script -->
    <script>
        $(function () {
            // layout
            var windowSize = {
                width: 440,
                plusWidth: 0
            };
            !isMobile && window.resizeTo(windowSize.width, 520 + windowSize.plusWidth);
            var Layout = {
                $btn: $('.btn'),
                $contentInner: $('#content-inner'),
                $errorCode: $('#error-code'),
                $errorMessage: $('#error-message'),
                init: function () {
                    this.$contentInner.removeClass();
                },
                payment: function () {
                    this.init();
                    this.$contentInner.addClass('payment');
                },
                success: function () {
                    !isMobile && window.resizeTo(windowSize.width, 680 + windowSize.plusWidth);
                    this.init();
                    this.$contentInner.addClass('success');
                    self.location.replace('#success');
                }
            };

            // hash
            var hash = window.location.hash;
            hash == '#success' && Layout.success();

            $('.close').click(function () {
                $window.trigger('self.close');
            });
            $window.bind('self.close', function () {
                window.close();
            });

            $('#request').click(function () {
                $.ajax({
                    type: 'post',
                    url: './payapp_request.php', //페이앱 API 호출할 URL 경로 ex)payapp_request.php
                    data: $('#content-payment').serializeArray2(),
                    dataType: 'json',
                    beforeSend: function () {
                        Layout.$btn.disable();
                    }
                }).done(function (data) {
                    if (data.state) {
                        Layout.success();
                        Layout.$btn.enable();
                    } else {
                        alert(data.msg);
                    }
                });
            });
            // complete
            $('#complete').click(function () {
                opener.location.href = 'MU_View.html'; //팝업에서 결제 요청 후 이동할 페이지
                auto.close;
            });
        });
    </script>
    <!-- /script -->
</head>
<body>
<div id="wrap">
    <div id="container">
        <div id="header">
            <h1><img src="http://lite.payapp.kr/public/img/pay/header-logo.gif" alt="페이앱"></h1>
        </div>
        <div id="content">
            <div id="content-inner" class="payment">
                <div id="content-payment" class="content-toggle krw">
                    <div>
                        <h2>기본정보</h2>
                        <table class="table">
                            <tr>
                                <th>상점명</th>
                                <td>{좋은상점}</td>
                            </tr>
                            <tr>
                                <th>상품명</th>
                                <td>{좋은상품}
                                    <input type="hidden" name="goodname" value="{좋은상품}">
                                </td>
                            </tr>
                            <tr>
                                <th>결제금액</th>
                                <td>\<span class="price">{1000}</span>
                                    <input type="hidden" name="price" value="{1000}"> 원
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div>
                        <h2>결제정보</h2>
                        <table class="table">
                            <tr>
                                <th>휴대폰번호</th>
                                <td><input type="tel" name="recvphone" value="" pattern="\d*" autocomplete="off"></td>
                            </tr>
                        </table>
                    </div>

                    <div class="btn-container">
                        <a class="btn btn-primary" onclick="CashOk()">결제하기</a>
                        <a class="btn btn-default close">닫기</a>
                    </div>

                    <!-- hidden -->
                    <input type="hidden" name="userid" value="{페이앱아이디}">
                    <input type="hidden" name="var1" value="{임의변수1}">
                    <input type="hidden" name="var2" value="{임의변수2}">
                    <!-- /hidden -->
                </div>

                <div id="content-success" class="content-toggle">
                    <div>
                        <div class="alert alert-info">
                            <ul>
                                <li>입력된 휴대폰으로 결제요청 메시지가 전송되었습니다.</li>
                                <li>메시지를 수신하신 후 결제를 진행하여 주시길 바랍니다.</li>
                            </ul>
                        </div>
                        <div id="content-usage">
                            <img src="http://lite.payapp.kr/public/img/pay/success-usage.gif" alt="페이앱 결제방법">
                        </div>
                        <div class="alert alert-message">
                            <ul>
                                <li>휴대폰에서 결제가 완료되면 자동으로 상점에 통보됩니다.</li>
                                <li>확인 버튼을 클릭하여 해당 창을 종료해 주시길 바랍니다.</li>
                            </ul>
                        </div>
                    </div>A

                    <div class="btn-container">
                        <a id="complete" class="btn btn-primary">확인</a>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</div>
</body>
</html>
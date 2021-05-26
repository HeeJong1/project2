<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <link rel="stylesheet" href="new_main.css">
        <link rel="stylesheet" href="<c:url value='resources/member.css/Join.css'/>" type="text/css"/>
        <link rel="stylesheet" href="<c:url value='resources/member.css/button.css'/>" type="text/css"/>
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <a href="index.html"><img src="img/logo_1.png" style="width: 100px; height:auto;" alt=""></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                        <button class="btn_area" type="button" value="중복체크" id="btnJoin">
                            중복체크
                        </button>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20">
                        <img src="img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">이메일</label>
                    <button class="btn_area" type="button" value="인증번호발송" id="btnJoin2">
                        인증번호발송
                    </button>
                    </h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="Email">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
                    <span class="box int_email">
                        <input type="text" id="confirm" class="int" maxlength="20" placeholder="인증번호입력">
                        <img src="img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box">인증번호가 틀립니다.</span>
                    <span class="confirm_next_box">확인되었습니다.</span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>

                <!-- ADRESS -->
                <div>
                    <h3 class="join_title"><label for="adress">주소</label>
                    <button class="btn_area" type="button" value="우편번호찾기" id="btnJoin2">
                        우편번호찾기
                    </button>
                    </h3>
                    <div id="bir_wrap">
                        
                        <div id="bir_ad">
                            <span class="box">
                                <input type="text" id="Address" class="int" maxlength="7" placeholder="우편번호 입력">
                            </span>
                            <span class="box">
                                <input type="text" id="Address" class="int" maxlength="30" placeholder="기본주소">
                            </span>
                        </div>

                        <div id="bir_ad">
                            <span class="box">
                                <input type="text" id="Address" class="int" maxlength="10" placeholder="상세주소">
                            </span>
                            <span class="box">
                                <input type="text" id="Address" class="int" maxlength="30" placeholder="도로명주소">
                            </span>
                        </div>

                    </div>
                       
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button class="snip1535" type="button">
                        <span>가입하기</span>
                    </button>
                </div>

                

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="resources/main.js"></script>
    </body>
</html>
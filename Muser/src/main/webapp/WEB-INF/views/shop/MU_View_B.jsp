<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Staging Template">
        <meta name="keywords" content="Staging, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Staging | Template</title>
    
        <!-- 페이지 Style -->
        <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
        <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
        <script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>
        <link href="https://raw.githubusercontent.com/daneden/animate.css/master/animate.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    	<link rel="stylesheet" type="text/css" href="../resources/css/member_css/button.css">

    	<!-- 파비콘 -->
    	<link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">

		<!-- Payment API -->	
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		<!-- API END-->
    

<!-- 메세지 창 스크립트 처리 -->
<script>
    function addOk() { // 추가 완료
        alert("장바구니에 추가 되었습니다.");
        location.href="/cart_view/"
    }

</script>
<script>
/* API Begin */
	function test11(){
		var IMP = window.IMP; // 생략가능
		IMP.init('imp24495762'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		
		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		//    name : '주문명:10000원 결제',
		    amount : 100, //실제 결제 금액
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456', 
		    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        window.location.href="<c:url value='/'/>";
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		});
	}
/* API END*/
</script>	

        <style>
            .star-input>.input,
            .star-input>.input>label:hover,
            .star-input>.input>input:focus+label,
            .star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('../resources/img/grade_img.png')no-repeat;}
            .star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
            .star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
            .star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
            star-input>.input.focus{outline:1px dotted #ddd;}
            .star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
            .star-input>.input>label:hover,
            .star-input>.input>input:focus+label,
            .star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
            .star-input>.input>label:hover~label{background-image: none;}
            .star-input>.input>label[for="p1"]{width:30px;z-index:5;}
            .star-input>.input>label[for="p2"]{width:60px;z-index:4;}
            .star-input>.input>label[for="p3"]{width:90px;z-index:3;}
            .star-input>.input>label[for="p4"]{width:120px;z-index:2;}
            .star-input>.input>label[for="p5"]{width:150px;z-index:1;}
            .star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
         </style>

    </head>


    <body>
    <div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" ></div>
   <!-- Header Section Begin -->
     <header class="header">
        <div class="container-fluid">
            <div class="row" >
                <div class="col-lg-4">
                    <div class="header__logo" >
                        <a href="<c:url value='/'/>"><img src="../resources/img/logo/logo_1.png"style="width: 100px; height:auto;" title="메인으로" alt=""></a>
                    </div>
                </div>


				<nav class="header__menu mobile-menu">
					<ul>
						<li><a href="<c:url value='/'/>">Home</a></li>

						<li><a href="#">Muser</a>
							<ul class="dropdown">
								<li><a href="<c:url value='/shop/MuList_G'/>">Guitar</a></li>
								<li><a href="<c:url value='/shop/MuList_D'/>">Drum</a></li>
								<li><a href="<c:url value='/shop/MuList_P'/>">Piano</a></li>
								<li><a href="<c:url value='/shop/MuList_B'/>">Bass</a></li>
							</ul>
						</li>

						<li><a href="<c:url value='/room/Room'/>">A Sound Studio</a></li>

						<c:choose>
							<c:when test="${member eq null}">
								<li><a href="#">Login</a>
									<ul class="dropdown">
										<li><a href="<c:url value ='/member/LoginLogOut'/>">로그인</a></li>
										<li><a href="<c:url value='/member/MemberInsert'/>">회원가입</a></li>
									</ul>
								</li>
							</c:when>
							<c:otherwise>
								<li><a href="#">Logout</a>
									<ul class="dropdown">
										<li><a href="<c:url value='/member/MemberView?muId=${member.muId}'/>">내정보</a></li>
										<li><a href="<c:url value='/member/Logout'/>">로그아웃</a></li>
									</ul>
								</li>
							</c:otherwise>
						</c:choose>
						<li><a href="<c:url value='/board/Write_List'/>">Muser Board</a></li>
		                  <c:if test="${member ne null}">
		                     <li><a href="<c:url value='/admin/admin_Qaa_Write'/>">Service Center</a></li><!-- Q&A -->
		                  </c:if>
						<c:choose>
						<c:when test="${member.muId eq 'admin'}">
								<li><a href="<c:url value='/admin/admin_Board'/>">Admin</a></li>
						</c:when>
						</c:choose>
					</ul>
				</nav>


			</div>
		</div>
    </header>
   <!-- Header Section End -->
    


        <div class="container-fluid" style="padding-right:0px; padding-left:0px;">
            <div class="content-wrapper">	
                <div class="item-container">	
                    <div class="container">	
                        <div class="col-md-12">
                            <div>
                                <center>
                                    <br><img src="../resources/gfile/${dto.gdsImg1}"></img>
                                </center>
                            </div>
                            <br><br>
                            <div class="container service1-items col-sm-2 col-md-2 pull-left">
                                <center>
                                    <a id="item-1" class="service1-item">
                                        <img src="../resources/gfile/${dto.gdsImg2}"></img>
                                    </a>
                                    <a id="item-2" class="service1-item">
                                        <img src="../resources/gfile/${dto.gdsImg3}"></img>
                                    </a>
                                    <a id="item-3" class="service1-item">
                                        <img src="../resources/gfile/${dto.gdsImg4}"></img>
                                    </a>
                                    

                                </center>
                            </div>
                        </div>
                            <br><br><br><br><br>
                        <div class="col-md-7">
                            <div class="product-title"><h2><c:out value='${dto.gdsName}'/></h2></div>
                            <br><br><br>
                            <div class="product-desc"><h2></h2></div>
                            <div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                            <hr><br><br><br>
                            <div class="product-price"><h2><fmt:formatNumber value="${dto.gdsPrice}" pattern="###,###,###"/></h2></div>
                            <div class="product-stock"><h2>In Stock</h2></div>
                            <br><br><br>
                            <hr>
                          
                            <c:choose>
                            <c:when test="${member ne null}">
                            <div class="btn-group cart">
                            
                                <div class="btn-group wishlist">
                                    <button type="button" class="btn btn-danger" onclick="test11()">
                                        
                                        <H2>결제하기</H2>
                                    </button>
                                    
                                </div>
                               
                                </div>
                                <div>
                                <br><br>
                                <form name="cartForm" method="post" action="<c:url value='/cart/cartInsert'/>">
                                <input type="hidden" name="gdsNo" value="${dto.gdsNo}">
                               <%--  <input type="hidden" name="muId" value="${member.muId}"> --%>
                                <div class="btn-group cart">
                                	<select name="cartAmount" style="font-size:20px;">
                                		<c:forEach begin="1" end="${dto.gdsAmount}" var="a">
                                			<option value="${a}"><H2>${a}</H2></option>
                                		</c:forEach>
                                	</select><H1>&nbsp;개&nbsp;&nbsp;</H1>
                                	<%-- <c:if test="${member ne null}"> --%>
                                	<button type="submit" class="btn btn-success">
                                    <!-- <button type="submit" class="btn btn-success" onclick="window.open('cart_view.html','name','resizable=no width=800px height=500px');return false"> -->
                                        <H2>장바구니</H2>
                                    </button>
                                   
                                </div>
                                </form>
                            </div>
                             </c:when>
                            <c:otherwise>
                            	<div class="btn-group cart"><h2>구매서비스는 로그인 후 가능합니다.</h2></div>
                            </c:otherwise>
                        </c:choose>
                                <br><br>
                                
                            </div>
                        </div> 
                    </div>
                <br><br>
                <div class="container-fluid">		
                    <div class="col-md-12 product-info">
                            <ul id="myTab" class="nav nav-tabs nav_tabs">
                                
                                <li class="active"><a href="#service-one" data-toggle="tab">제품 상세정보</a></li>
                                <li><a href="#service-two" data-toggle="tab">반품안내</a></li>
                                <li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
                                
                            </ul>
                        <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="service-one">
                                 <center>
                                    <img src="../resources/gfile/${dto.gdsImg5}"></img><!-- 기타 상세보기 -->
                                </center>           
                                </div>
                            <div class="tab-pane fade" id="service-two">
                                
                                <img src="../resources/img/Change.PNG"alt=""></img><!-- 상품구매 규정설명 -->
                                        
                                
                            </div>
                            <div class="tab-pane fade" id="service-three" >  <!--start review  -->
                                <div class="container" >
                                    <h2 class="text-center">Review</h2>
                                    <c:forEach var="muList" items="${muserList}">
                                    <div class="card">
                                        <div class="card-body" width="500px";> 
                                            <form class="row" action="#" method="POST">
                                                <div class="col-md-2">
                                                    <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
                                                    <p class="text-secondary text-center">${bList.muId}</p>
                                                </div>
                                                <div class="col-md-10">
                                                    <p>
                                                        <a class="float-left"><textarea cols='90' rows='5' name='bContents' style="resize: none;"></textarea></a>
                                                        <h3 style="text-align: center;">평점</h3>
                                                        <span class="star-input">
                                                            <span class="input">
                                                                <input type="radio" name="star-input" value="1" id="p1">
                                                                <label for="p1">1</label>
                                                                <input type="radio" name="star-input" value="2" id="p2">
                                                                <label for="p2">2</label>
                                                                <input type="radio" name="star-input" value="3" id="p3">
                                                                <label for="p3">3</label>
                                                                <input type="radio" name="star-input" value="4" id="p4">
                                                                <label for="p4">4</label>
                                                                <input type="radio" name="star-input" value="5" id="p5">
                                                                <label for="p5">5</label>
                                                              </span>
                                                              <output for="star-input"><b>0</b>점</output>						
                                                        </span>
                                                        <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                                                   </p>
                                                   <div class="clearfix"></div>
                                                    
                                                    <p>
                                                        <butoon class="snip1538" type="submit" onclick="submitComment()">댓글</butoon>
                                                        <a class="float-right btn btn-outline-primary ml-2"> <i class="fa fa-reply"></i> Reply</a>
                                                        <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
                                                        
                                                   </p>
                                                </div>
                                                
                                            </form>
                                            <form class="card card-inner">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
                                                            <p class="text-secondary text-center">${bList.muId}</p>
                                                        </div>
                                                        <div class="col-md-10">
                                                            <p>
                                                            <a class="float-left">${bList.bTt}</a>

                                                            
                                                        </p>
                                                        
                                                            <p>
                                                                <br><br>
                                                                <a class="float-right btn btn-outline-primary ml-2">  <i class="fa fa-reply"></i> Reply</a>
                                                                <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
                                                           </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                        </div>
                                    </div>
                                </c:forEach>
                                </div> 
                            </div> <!--end review  -->
                            
                            
                            
                        </div>
                        
                    </div>
                </div>
                    
<br><br>

<!-- 화살표 -->
<div style="position: fixed; bottom: 50px; right: 5px;">
    <a href="#">
    <img src="../resources/img/Check_bt_2.png" title="위로 가기" width="50PX" ></a>
    </div>
  
  <!--================End Cart Area =================-->

    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="../resources/img/footer-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="../resources/img/logo/logo.png" alt=""></a>
                        </div>
                        
                    </div>
                </div>
                
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__address">
                        <h6>대표자: 3조</h6>
                        <ul>
                            <li>Muse@muser.co.kr</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__address">
                        <h6>사업자: 20-12-15</h6>
                        <ul>
                            <li>Tel:032-888-7777</li>
                            <li>문자:032-888-6666</li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__address">
                        <h6>소재지: 인천광역시 미추홀구</h6>
                        <ul>
                            <li>고객지원: Muser</li>
                            <li>3조 Corporation</li>
                        </ul>
                    </div>
                </div>
                    <div class="footer__widget">
                        <ul>
                            <li><a href="<c:url value='/soge'/>">사이트소개 | </a><a href="<c:url value='/provision'/>">이용약관 | </a><a href="<c:url value='/solo'/>">개인정보취급방침 | </a><a href="<c:url value='/goji'/>">책임한계 및 법적고지</a></li>
                            <p>muse 본 사이트에서 물품 및 연습실 을 직접 관여하지 안습니다. muse에 등록된 판매물품과 연습실 예약 내용은 등록자가 등록한것으로
                            일체의 책임을 지지 않습니다.<br>
                            muse 운영진이 사용하는 아이디는 ?,?,?,?,? 이며 운영진은 회원에게 개별적으로 접촉하지 않습니다.</p>
                        </ul>
                    </div>
                </div>
            </div>

</footer>
<!-- Footer Section End --> 
          
<script type="text/javascript" src="../resources/js/page_js/main.js"></script>
<script type="text/javascript" src="../resources/js/page_js/star.js"></script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="keywords" content="Staging, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원정보</title>

    <link rel="stylesheet" href="resources/css/page_css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/page_css/style.css" type="text/css">
    <link rel="stylesheet" href="resources/css/page_css/img_size.css" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">    
    <script type="text/javascript" src="resources/js/page_js/jquery-3.3.1.min.js"></script>
    
    <!-- 파비콘 -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/img/MS.png">
        
</head>
 <!-- Header Section Begin -->
     <header class="header">
        <div class="container-fluid">
            <div class="row" >
                <div class="col-lg-4">
                    <div class="header__logo" >
                        <a href="<c:url value='/'/>"><img src="resources/img/logo/logo_1.png"style="width: 100px; height:auto;" title="뒤로가기"alt=""></a>
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
									</ul></li>
							</c:when>
							<c:otherwise>
								<li><a href="#">Logout</a>
									<ul class="dropdown">
										<li><a href="<c:url value='/member/MemberView'/>">내정보</a></li>
										<li><a href="<c:url value='/member/Logout'/>">로그아웃</a></li>
									</ul></li>
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
    <body>
		
        <div class="breadcrumb-option spad set-bg" data-setbg="resources/img/bg_guitar_1.jpg" ></div>
		

            <div id="layoutSidenav_content">
                <main>

                    <div class="container">
                        <h1 class="mt-4">책임한계 및 법적고지</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><a href="<c:url value='/'/>">메인</a></li>
                            <li class="breadcrumb-item active">법적고지</li><br>
                            <tr style="text-align:center;">
                                <td>
                                    어떠한 경우에도 Muser 은 서비스, 자료와 관련하여 직접, 간접, 부수적, 징벌적, 파생적인 손해에 대해 서 책임을 지지 않습니다.<br>
                                    Muser 웹사이트내에 등록된 모든 제품은 당사자간의 직접거래 방식입니다. 단, 안전거래 를 이용한 거래는 (주)프로메테우스가 일부의 책임을 집니다.<br> 
                                    Muser 내 모든 매물정보'의 정확성이나 신뢰성에 대해 명시적 또는 묵시적인 보증을 명시적으로 부인 합니다. Muser 내에<br> 
                                    등록된 매물 직거래시 등록정보 및 상태 확인,거래에 대한 모든 책임은 구매하는 귀 하에게 있으며 만일의 사태로 피해가 발생해도,뮬은 일체 책임을 지지<br> 
                                    않습니다. 따라서 뮬 웹사이 트내에 등록된 모든 매물은 저희 Muser 과는 무관하오니 매매시 당사자간에 신중히 검토하시 바랍니다.
                                </td><br><br>
                                    
                                 <td>
                                     뮬쇼핑몰은 타업체가 운영하는 곳으로 뮬은 링크만 제공할뿐 쇼핑몰 운영에 어떠한 관여도 하지 않 으며 쇼핑몰 운영 주체가 아닌만큼 쇼핑몰과 관련된 어떠한<br> 
                                     책임도 지지 않습니다. (Muser 쇼핑몰 이용 약관 참고)
                                </td><br><br>
                                 <td>본 책임의한계 및 법적고시는 2021년 5월 18일부터 시행합니다</td>
                             </tr>
                        </ol>
                        
                     </div>

                        </div>>
 
                </main>
                <br><br><br><br><br><br><br><br><br>
                    <!-- Footer Section Begin -->
                    <footer class="footer set-bg" data-setbg="resources/img/footer-bg.jpg">
                        <div class="container">
                            <div >
                                <div class="row">
                                    
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="footer__about">
                                        <div class="footer__logo">
                                            <a href="#"><img src="resources/img/logo/logo.png" alt=""></a>
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
                            			<p>muser 본 사이트에서 물품 및 연습실 을 직접 관여하지 안습니다. muser에 등록된 판매물품과 연습실 예약 내용은 등록자가 등록한것으로
                            			일체의 책임을 지지 않습니다.<br>
                            			muser 운영진이 사용하는 아이디는 ?,?,?,?,? 이며 운영진은 회원에게 개별적으로 접촉하지 않습니다.</p>
                                        </ul>
                                    </div>
                                </div>
                            </div>
      
                </footer>
<!-- Footer Section End -->   

		<script type="text/javascript" src="resources/js/page_js/main.js"></script>

    </body>
</html>
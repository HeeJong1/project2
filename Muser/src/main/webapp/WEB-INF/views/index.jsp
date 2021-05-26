<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Staging Template">
    <meta name="keywords" content="Staging, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Musician | User</title>

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/page_css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/page_css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/page_css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/page_css/style.css" type="text/css">
    <script type="text/javascript" src="resources/js/page_js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="resources/js/page_js/jquery.slicknav.js"></script>
    <script type="text/javascript" src="resources/js/page_js/owl.carousel.min.js"></script>
    <link rel="stylesheet" href="resources/css/page_css/elegant-icons.css" type="text/css">

    <!-- 파비콘 -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/img/MS.png">

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>


 <!-- Header Section Begin -->
     <header class="header">
        <div class="container-fluid">
            <div class="row" >
                <div class="col-lg-4">
                    <div class="header__logo" >
                        <a href="<c:url value='/'/>"><img src="resources/img/logo/logo_1.png"style="width: 150px; height:auto;" alt=""></a>
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
										<li><a href="<c:url value='/member/MemberView?muId=${member.muId}'/>">내정보</a></li>
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

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="resources/img/hero/hero-21.jpg">
                <div class="hero__text">
                    <!-- <h2>메인 글 </h2> -->
                    <a href="<c:url value='/shop/MuList_G'/>" class="primary-btn">Muser room</a>
                    
                    <div class="hero__social">
                        
                    </div>
                </div>
            </div>
            <div class="hero__items set-bg" data-setbg="resources/img/hero/hero-2.png">
                <div class="hero__text">
                    <!-- <h2>메인글 2</h2> -->
                    <a href="<c:url value='/room/Room'/>" class="primary-btn" style="color : gray">Join room</a>
                    
                    <div class="hero__social">
                        
                    </div>
                </div>
            </div>
        </div>
   
    </section>
     
    <!-- Hero Section End -->

 <!-- Project Section Begin -->
 <section class="project">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 text-center" style="margin-bottom: 40px;">
                <div class="section-title">
                    <span></span>
                    <span style="font-size: 50px; margin-top: 50px;">
                        suport your music</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="project__slider owl-carousel">
                <div class="col-lg-3">
                    <div class="project__slider__item set-bg" data-setbg="img/project/project-1.jpg">
                        <div class="project__slider__item__hover " style="opacity: 0.8;">
                            <center><a href="#"><img src="img/project/Main_G1.png"style="width: auto; height:250px; " alt=""></a></center>
                            
                            <span style="font-size: 20px;">
                                Fender Custom Shop 2020<br>
                                Limited Edition</span>
                            <span  style="color:lightslategray;">사용하는 기타는 대부분 커스텀 업체 기타다.팬더 스트라토캐스터 외형에 빨간색 바디, 픽업 싱-싱-싱 배치가 윌로우스 Sunset Standard Relic이고 팬더 스트라토캐스터 외형에 보라색 바디, 픽업 험-싱-험 배치가 마이클 터틀 Custom Tuned S다.</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="project__slider__item set-bg" data-setbg="img/project/project-2.jpg">
                        <div class="project__slider__item__hover " style="opacity: 0.8;">
                            <center><a href="#"><img src="img/project/Main_G2.png"style="width: auto; height:239px; " alt=""></a></center>
                            
                            <span style="font-size: 20px;">
                                [Limited Edition]
                                Cort <br>Roselyn LE <br>
                                콜트 한정판 통기타</span>
                            <span  style="color:lightslategray;">클래식 기타 초급 과정으로 기타의 기초를 다졌으며, 아버지에게 처음 핑거스타일 주법을 배운 이후 핑거스타일 동영상만 보고 연주기술을 익혔고, 유튜브를 통해 해외 뮤지션들에 알려져 직접 가르침을 받게 되었다.</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="project__slider__item set-bg" data-setbg="img/project/project-3.png">
                        <div class="project__slider__item__hover " style="opacity: 0.8;">
                            <center><a href="#"><img src="img/project/Main_G3.png"style="width: auto; height:290px; " alt=""></a></center>
                            
                            <span style="font-size: 20px;">
                            Gretsch Energy + Istanbul <br>Agop Xist
                            Blue Sparkle</span>
                            <span  style="color:lightslategray;">데이비드 에릭 그롤(David Eric Grohl, 1969년 1월 14일생)은 미국의 음악가다. 록 밴드 너바나의 드러머이자 푸 파이터스의 창립단원.</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="project__slider__item set-bg" data-setbg="img/project/project-4.png">
                        <div class="project__slider__item__hover " style="opacity: 0.8;">
                            <center><a href="#"><img src="img/project/Main_G5.png"style="width: auto; height:335px; " alt=""></a></center>
                            
                            <span style="font-size: 20px;">
                                Fender - American <br>Professional 
                                </span>
                            <span  style="color:lightslategray;">1980~90년대 한국 록, 펑크의 역사에서 가장 주목할만한 베이시스트로서의 활약이었다.</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="project__slider__item set-bg" data-setbg="img/project/project-5.png">
                        <div class="project__slider__item__hover " style="opacity: 0.8;">
                            <center><a href="#"><img src="img/project/Main_G4.png"style="width: auto; height:300px; " alt=""></a></center>
                            
                            <span style="font-size: 20px;">
                                Kurzweil KCP1 <br>
                                영창 커즈와일 디지털피아노</span>
                            <span  style="color:lightslategray;">프레드 허쉬는 현존하는 최고 재즈 피아니스트 가운데 한 명이다. 가장 창의적인 피아니스트로 주목받으며 동시에 브래드 멜다우, 이선 아이버슨 같은 유명 재즈 피아니스트를 가르친 선생님이기도 하다</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
        <!-- Project Section End -->


        <footer class="footer set-bg" data-setbg="img/footer-bg.jpg" style="margin-top: 50px;">
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

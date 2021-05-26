<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

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
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/page_js/bootstrap.min.js"></script>

<!-- 파비콘 -->
<link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">


    </head>


    <body>
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
<!-- Breadcrumb Section Begin -->		
        <div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" ></div>
            <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Drum/Dr_1.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">

                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Drum/Dr_2.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center"> 
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Drum/Dr_3.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
              <!--slide end--> 
        </div>


   

   <!-- Team Section Begin -->
   <!-- <section class="team spad"> -->
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-6">
                <div class="section-title">
                    <span>Our Team</span>
                    <h2>Markers</h2>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="team__btn">
                    <a href="#" class="primary-btn normal-btn">View All</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg" data-setbg="../resources/img/Drum/DRM_1.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>Dave Grohl</h5>
                            <span>Rock Drumer</span>
                        </div>
                        <p>미국 밴드 너바나(Nirvana, 1990~1994)에서 드러머로 활약했다. 커트 코베인의 사망 이후 푸 파이터스(Foo Fighters), 뎀 크룩키드 벌처스 (Them Crooked Vultures), 프로봇 (Probot)에서 작사작곡은 물론 보컬과 기타, 드럼을 쳤을 정도로 다재다능하다.</p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg" data-setbg="../resources/img/Drum/DRM_2.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>Dave Lombardo</h5>
                            <span>Drumer</span>
                        </div>
                        <p>청명하고 깊은 울림을 지닌 심벌 브랜드인 Paiste사 제품을 1987년부터 고집스레 쓰고 있다. 짧고 빠른 스트로크가 가능하도록 최대한 드럼세트를 밀착시킨다는 점이 특징이다. 주로 왼쪽 발을 시작으로 드럼 비트를 연주한다.(When he plays drum beats on the bass drums, he always begins with his left foot.)</p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg"data-setbg="../resources/img/Drum/DRM_3.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>Stewart Copeland</h5>
                            <span>Drumer</span>
                        </div>
                        <p>코플랜드는 정확하고 열정적이며 창조적인 레게사운드에 영향 받았다. 왼손잡이지만 오른손잡이처럼 연주하는데 왼쪽에 하이햇(hi-hat, 발로 치는 심벌즈)을, 오른쪽에 심벌즈와 ‘플로어 탐’(대형 드럼세트)을 놓고 연주한다. 그는 아주 별난 방법(a very peculiar way)으로 스네어 드럼(snare drum. 작은 북. 쇠울림줄을 대어 달그락거리는 소리가 나는 북)을 연주한다.</p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Team Section End -->

<br><br>
<hr>
<!-- shop list -->
<section class="sections random-product">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                
                    <c:forEach var="drum" items="${glist}">
                    <div class="col-md-4">
                    <div class="card">
                        <a href="<c:url value='/shop/MU_View_D?gdsNo=${drum.gdsNo}'/>"><img class="card-img-top" src="../resources/gfile/${drum.gdsImg1}" alt="EL_Guitar" ></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="<c:url value='/shop/MU_View_D?gdsNo=${drum.gdsNo}'/>" class="text-dark">${drum.gdsName}</a>
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="badge badge-danger float-right">${drum.gdsNational}</div>
                            <div class="float-left">
                                <a href="<c:url value='/shop/MU_View_D?gdsNo=${drum.gdsNo}'/>" class="text-danger">${drum.gdsBrand}<br>${drum.gdsPackage}</a>
                                <br>
                                <small class="text-muted">
									<fmt:formatNumber value="${drum.gdsPrice}" pattern="###,###,###"/>
								</small><br>
                            </div>
                        </div>
                         </div>
                </div><!--.col-->
                       </c:forEach>
                   
                
                <br>
                    </div><!--row-->
                </div><!--.container-->
            </div><!--.container-fluid-->

</section>
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

<script type="text/javascript" src="../resources/js/page_js/main.js"></script>

</body>

</html>
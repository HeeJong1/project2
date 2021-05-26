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
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Piano/Pn_1.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">

                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Piano/Pn_2.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center"> 
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Piano/Pn_3.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
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
                    <h2>Musician</h2>
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
                <div class="team__item set-bg" data-setbg="../resources/img/Piano/Pns_1.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>
                                Fred Hersch </h5>
                            <span>jazz pianist</span>
                        </div>
                        <p>프레드 허쉬는 현존하는 최고 재즈 피아니스트 가운데 한 명이다. 가장 창의적인 피아니스트로 주목받으며 동시에 브래드 멜다우, 이선 아이버슨 같은 유명 재즈 피아니스트를 가르친 선생님이기도 하다. 1993년 동성애자라는 사실을 세상에 알린 그는 2008년 에이즈 증세로 두 달간 혼수상태에 빠져 재즈 팬들을 놀라게 했다. 기적처럼 깨어난 그는 여전히 왕성하게 콘서트를 하고 앨범을 발표하고 있다.
                        </p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg" data-setbg="../resources/img/Piano/Pns_2.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>임인건</h5>
                            <span>jazz pianist</span>
                        </div>
                        <p>1989년에 발표된 그의 1집 앨범 〈비단구두〉는 한국의 첫 번째 피아노 솔로 연주 앨범이다. 2016년에는 재즈 싱어 박성연을 비롯한 여러 1세대 재즈 뮤지션들이 참여한 〈야누스, 그 기억의 현재〉가 그의 주도로 제작 발표됐다. 그는 현재 제주 동북쪽 해안마을 하도리에서 ‘하도리 가는 길’이라는 카페 겸 공연장을 운영하며 새로운 앨범을 준비 중이다.</p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg"data-setbg="../resources/img/Piano/Pns_3.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>이영경</h5>
                            <span>pianist</span>
                        </div>
                        <p>피아노 전공생이던 그는 교수들의 반대를 무릅쓰고 학교를 그만두고 재즈 뮤지션으로 전향하였다. 그 후 'Janus 60th 정기연주회' 재즈 무대에 선 것을 시작으로 본격적인 재즈 연주자의 길을 걷는다. 1988년에는 '조지 가와구치'와, 1989년에는 세계적인 트럼펫 연주자 '히노 테루마사'와 공연하면서 재즈계의 기대주로 떠올랐으며, Bob Moses, John Lock Wood 등과의 연주를 통해 정통재즈의 연주실력을 인정받았다.</p>
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
                
                    <c:forEach var="piano" items="${glist}">
                    <div class="col-md-4">
                    <div class="card">
                        <a href="<c:url value='/shop/MU_View_P?gdsNo=${piano.gdsNo}'/>"><img class="card-img-top" src="../resources/gfile/${piano.gdsImg1}" alt="EL_Guitar" ></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="<c:url value='/shop/MU_View_P?gdsNo=${piano.gdsNo}'/>" class="text-dark">${piano.gdsName}</a>
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="badge badge-danger float-right">${piano.gdsNational}</div>
                            <div class="float-left">
                                <a href="<c:url value='/shop/MU_View_P?gdsNo=${piano.gdsNo}'/>" class="text-danger">${piano.gdsBrand}<br>${piano.gdsPackage}</a>
                                <br>
                                <small class="text-muted">
									<fmt:formatNumber value="${piano.gdsPrice}" pattern="###,###,###"/>
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
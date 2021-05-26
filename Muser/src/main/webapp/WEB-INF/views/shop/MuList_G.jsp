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
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/guitar/GG1.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">

                            <a style="text-align: center;"><a href="#"><img src="../resources/img/guitar/GG2.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center"> 
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/guitar/GG3.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
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
                <div class="team__item set-bg" data-setbg="../resources/img/team/team-1.jpg">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>임선호</h5>
                            <span>CCM Guitarist</span>
                        </div>
                        <p>사용하는 기타는 대부분 커스텀 업체 기타다. 현재는 마이클 터틀과 윌로우즈의 기타를 많이 사용한다. 팬더 스트라토캐스터 외형에 빨간색 바디, 픽업 싱-싱-싱 배치가 윌로우스 Sunset Standard Relic이고 팬더 스트라토캐스터 외형에 보라색 바디, 픽업 험-싱-험 배치가 마이클 터틀 Custom Tuned S다.
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
                <div class="team__item set-bg" data-setbg="../resources/img/team/team-2.jpg">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>정성하</h5>
                            <span>Acustic Guitarist</span>
                        </div>
                        <p>앨범 ‘L’Atelier’서부터 느낄 수 있는데 작곡이나 편곡에서 여러 재즈, 블루스적인 요소가 들어가있고 급기야 그 다음 앨범인 ‘Mixtape’은 스탠다드 재즈와 팝송들만을 담은 커버 앨범으로 만들기도 했다. 매주 유튜브에 올리는 간이 팝 커버들과는 편곡 퀄리티가 상당히 차이나며, 그 후 자작곡들도 대체적으로 재지한 스타일로 많이 변화되었다.</p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg"data-setbg="../resources/img/team/team-3.jpg">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>김태원</h5>
                            <span>Guitarist</span>
                        </div>
                        <p>같은 맥락의 이야기로, 한때는 공연에서는 앰프+이펙터(GT-6)하나[11] + 기타 조합으로 연주를 한다고 한다. 다만 이는 김태원의 '복잡한 건 싫다'라는 성격도 어느 정도 반영이 된 것으로 보인다. 현재는 VOX사의 Tonelab LE 멀티이펙터 + BOSS사의 EQ페달 GE-7 + Vertex사의 볼륨페달을 함께 사용한다</p>
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
                
                    <c:forEach var="guitar" items="${glist}">
                    <div class="col-md-4">
                    <div class="card">
                        <a href="<c:url value='/shop/MU_View_G?gdsNo=${guitar.gdsNo}'/>"><img class="card-img-top" src="../resources/gfile/${guitar.gdsImg1}" alt="EL_Guitar" ></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="<c:url value='/shop/MU_View_G?gdsNo=${guitar.gdsNo}'/>" class="text-dark">${guitar.gdsName}</a>
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="badge badge-danger float-right">${guitar.gdsNational}</div>
                            <div class="float-left">
                                <a href="<c:url value='/shop/MU_View_G?gdsNo=${guitar.gdsNo}'/>" class="text-danger">${guitar.gdsBrand}<br>${guitar.gdsPackage}</a>
                                <br>
                                <small class="text-muted">
									<fmt:formatNumber value="${guitar.gdsPrice}" pattern="###,###,###"/>
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
                            <div >
                                <div class="row">
                                    
                                </div>
                            </div>
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
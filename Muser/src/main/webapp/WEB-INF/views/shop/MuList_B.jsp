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
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Bass/Bs_1.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">

                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Bass/Bs_2.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center"> 
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/Bass/Bs_3.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;" ;></a></a>                   </div>
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
                <div class="team__item set-bg" data-setbg="../resources/img/Bass/Bass_1.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>조동익</h5>
                            <span>Bassist</span>
                        </div>
                        <p>그의 베이스는 단 한 순간도 곡의 질서와 균형감을 무너뜨린 적이 없었다. 단순하지만 정확하고 엄정한 코드와 스케일, 그리고 창의적으로 계발된 프레트리스 베이스, 멜로딕한 베이스 라인도 조동익 베이스 교본의 목차였다, 그렇게 조용한 여운으로 퍼졌던 리듬과 코드는 1980~90년대의 숱한 한국 대중음악사의 명반에서 조용히 빛을 발한 존재감이었다.</p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg" data-setbg="../resources/img/Bass/Bass_2.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>서영도</h5>
                            <span>Bassist</span>
                        </div>
                        <p>서영도는 베이스 테크닉에 관해서는 첫 손에 꼽힐만한, 화려한 연주력을 지닌 테크니션이며, 가장 폭넓은 음악적 스펙트럼을 지닌 탈렌트이다. 가요 세션과 재즈 영역에서의 일렉트릭-어쿠스틱 베이스를 두루 소화해왔던 서영도는 자신의 솔로 앨범을 통해서는 보다 실험적이고 도전적인 입장을 피력해왔다. 주로 왼쪽 발을 시작으로 드럼 비트를 연주한다.(When he plays drum beats on the bass drums, he always begins with his left foot.)</p>
                        <div class="team__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="team__item set-bg"data-setbg="../resources/img/Bass/Bass_3.png">
                    <div class="team__text">
                        <div class="team__title">
                            <h5>강기영</h5>
                            <span>Bassist</span>
                        </div>
                        <p>현재는 베이시스트로 활동하지 않고, 달파란이란 이름으로 테크노 아티스트로 활동하고 있는 강기영은 한국 베이시스트의 역사와 계보에서 반드시 거론되어야할 대상이다. 시나위 2집, H2O, 삐삐 밴드, 삐삐 롱 스타킹, 그밖의 세션에서 강기영의 베이스는 1980~90년대 한국 록, 펑크의 역사에서 가장 주목할만한 베이시스트로서의 활약이었다.</p>
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
                
                    <c:forEach var="base" items="${glist}">
                    <div class="col-md-4">
                    <div class="card">
                        <a href="<c:url value='/shop/MU_View_B?gdsNo=${base.gdsNo}'/>"><img class="card-img-top" src="../resources/gfile/${base.gdsImg1}" alt="EL_Guitar" ></a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="<c:url value='/shop/MU_View_B?gdsNo=${base.gdsNo}'/>" class="text-dark">${base.gdsName}</a>
                            </h5>
                        </div>
                        <div class="card-footer">
                            <div class="badge badge-danger float-right">${base.gdsNational}</div>
                            <div class="float-left">
                                <a href="<c:url value='/shop/MU_View_B?gdsNo=${base.gdsNo}'/>" class="text-danger">${base.gdsBrand}<br>${base.gdsPackage}</a>
                                <br>
                                <small class="text-muted">
									<fmt:formatNumber value="${base.gdsPrice}" pattern="###,###,###"/>
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
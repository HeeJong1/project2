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

 

    <!-- Css Styles -->
    <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
	<link rel="stylesheet" href="../resources/css/Room_css/room.css" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../resources/js/page_js/bootstrap.min.js"></script>

<!-- 파비콘 -->
<link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">


</head>


    <body>
		<div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" style="width: max;"></div>
 <!-- Header Section Begin -->
     <header class="header">
        <div class="container-fluid">
            <div class="row" >
                <div class="col-lg-4">
                    <div class="header__logo" >
                        <a href="<c:url value='/'/>"><img src="../resources/img/logo/logo_1.png"style="width: 100px; height:auto;" alt=""></a>
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
		<br><br>
		<div class="breadcrumb-option spad set-bg"  style="width: max; " >
            <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/room/View_1.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;"></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">

                            <a style="text-align: center;"><a href="#"><img src="../resources/img/room/View_2.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;"></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center"> 
                            <a style="text-align: center;"><a href="#"><img src="../resources/img/room/View_3.png"alt="slide"  style="padding-bottom: 90px;  width:3000px;"></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
              <!--slide end--> 
        </div>


        <!-- 본문 -->
        <!--explore start -->
		<section id="explore" class="explore">
			<div class="container">
				<div class="section-header">
					<h2>explore</h2>
					<p>Explore New place, food, culture around the world and many more</p>
				</div><!--/.section-header-->
				<div class="explore-content">
					<div class="row">

<c:forEach var="room" items="${olist}">
						<div class=" col-md-4 col-sm-6">
							<div class="single-explore-item">
								<div class="single-explore-img">
									<img src="../resources/rfile/${room.ofImg1}" alt="explore image">
									<div class="single-explore-img-info">
										<button onclick="window.location.href='<c:url value='/room/Room_View?ofNo=${room.ofNo}'/>'">best rated</button>
										<div class="single-explore-image-icon-box">
											<ul>
												<li>
													<div class="single-explore-image-icon">
														<i class="fa fa-arrows-alt"></i>
													</div>
												</li>
												<li>
													<div class="single-explore-image-icon">
														<i class="fa fa-bookmark-o"></i>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="single-explore-txt bg-theme-1">
								
									<h2 ><a href="<c:url value='/room/Room_View?ofNo=${room.ofNo}'/>">[${room.ofName}]</a></h2>
									<p class="explore-rating-price">
										<span class="explore-rating">H.P.</span>
										<a href="#">${room.repPhone}</a> 
										<span class="explore-price-box">
											<!-- form -->
											<span class="explore-price" ><fmt:formatNumber value="${room.ofPrice}" pattern="###,###,###"/></span>
										</span>
										 <a href="#">[${room.repName}]</a>
									</p>
									<div class="explore-person">
										<div class="row">
											<div class="col-sm-2">
												<div class="explore-person-img">
													<a href="#">
														<img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
													</a>
												</div>
											</div>
											<div class="col-sm-10">
												<p> ${room.ofDesc}
												</p>
											</div>
										</div>
									</div>
									<div class="explore-open-close-part">
										<div class="row">
											<div class="col-sm-5">
												<!-- <button class="close-btn" onclick="window.location.href='#'">close now</button> -->
											</div>
											<div class="col-sm-7">
												<div class="explore-map-icon">
													<a href="#"><i data-feather="map-pin"></i></a>
													<a href="#"><i data-feather="upload"></i></a>
													<a href="#"><i data-feather="heart"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					</div>
				</div>
			</div><!--/.container-->

		</section><!--/.explore-->
		<!--explore end -->

       
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
                            <p>muser 본 사이트에서 물품 및 연습실 을 직접 관여하지 안습니다. muser에 등록된 판매물품과 연습실 예약 내용은 등록자가 등록한것으로
                            일체의 책임을 지지 않습니다.<br>
                            muser 운영진이 사용하는 아이디는 ?,?,?,?,? 이며 운영진은 회원에게 개별적으로 접촉하지 않습니다.</p>
                        </ul>
                    </div>
                </div>
            </div>

          
</footer>

<script type="text/javascript" src="../resources/js/page_js/main.js"></script>
</body>

</html>
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
                        <a href="<c:url value='/'/>"><img src="resources/img/logo/logo_1.png"style="width: 100px; height:auto;" title="뒤로가기" alt=""></a>
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
                        <h1 class="mt-4">개인정보취급방침</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><a href="<c:url value='/'/>">메인</a></li>
                            <li class="breadcrumb-item active">방침</li><br>
                            <tr style="text-align:center;">
                                <th>'Muser'은 (이하 '3조'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다. 3조<br>
                                    는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해<br> 
                                    어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여<br> 
                                    공지할 것입니다.
                                    </th><br><br>
                                <th>
                                    ο 본 방침은 : 2021 년 05 월 18 일 부터 시행됩니다.
                                </th><br><br>    
                             </tr>
                             <th>
                                ■ 수집하는 개인정보 항목 회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
                                ο 수집항목 : 로그인ID , 성명, 이메일(선택), 서비스 이용기록 , 접속 로그 , 쿠키 , 접속 IP 정보 , 결제기록, 휴대전화번호<br>
                                ο 개인정보 수집방법 : 홈페이지(회원가입, 공개 게시판) , 생성정보 수집 툴을 통한 수집
                            </th><br><br>    
                        
                        </ol>
                        
                     </div>

                        </div>
                    

                    <br><br><br><br><br><br><br><br><br><br><br><br><br>
                </main>
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
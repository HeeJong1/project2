<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <!-- 페이지 Style -->
    <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
    <link href="../resources/css/page_css/styles.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    
        
<!------ Include the above in your HEAD tag ---------->


</head>
          
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
                              <li><a href="<c:url value ='/member/Login'/>">로그인</a></li>
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
		<div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" style="width: max; "></div>
        
        <div id="layoutSidenav">

            <div id="layoutSidenav_content">
	<main>
                    <div class="container">
                    
                        <h4 class="mt-4" style="text-align: center;">연습실 예약목록</h4>
                    
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                예약 정보
                            </div>
                           
							<c:choose>
                  	<c:when test ="${map.count==0}">
                  	  예약목록이 비었습니다.
                  	</c:when>
                    <c:otherwise>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        <thead>
											
											<tr style="text-align:center;">
                                                <th>ID</th>
												<th>예약 번호</th>
												<th>연습실</th>
												<th>업주명</th>
												<th>예약 날짜</th>
												<th>예약 금액</th>
													
											</tr>
											</thead>
											<tbody>
											<c:forEach var="rList" items="${map.list}">
                                            <tr style="text-align:center;">
                                                <td>${rList.muId}</td>
                                                <td>${rList.resNo}</td>
												<td>${rList.ofName}</td>	
												<td>${rList.repName}</td>
                                                <td>${rList.bookDate}</td>
                                                <td><fmt:formatNumber value="${rList.ofPrice}" pattern="###,###,###"/></td>
                                            </tr>
                                            </c:forEach>  
			<tr style="text-align:center;">
				<td colspan="5"><b>총 예약 금액</b></td>
				<td><b><fmt:formatNumber value="${map.sumMoney}" pattern="###,###,###"/></b></td>
			</tr>
											</tbody>
											
                                    </table>
                     
                                </div>
                            </div>
                            </c:otherwise>
                            </c:choose>                            
                        </div>
                        <center><button class="site2-btn" onclick="location.href=<c:url value='/'/>">확인</button></center>
                    </div>
                </main>
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
                            <p>muser 본 사이트에서 물품 및 연습실 을 직접 관여하지 안습니다. muser에 등록된 판매물품과 연습실 예약 내용은 등록자가 등록한것으로
                            일체의 책임을 지지 않습니다.<br>
                            muser 운영진이 사용하는 아이디는 ?,?,?,?,? 이며 운영진은 회원에게 개별적으로 접촉하지 않습니다.</p>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                
                                
                            </div>
                        </div>
                    
                </footer>
<!-- Footer Section End -->   

		<script type="text/javascript" src="../resources/js/page_js/main.js"></script>
    </body>
</html>
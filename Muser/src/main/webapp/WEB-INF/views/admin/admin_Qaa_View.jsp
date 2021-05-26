<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Staging | Template</title>


    <!-- 페이지 Style -->
    <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
    <link href="../resources/css/page_css/styles.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/member_css/button.css">
    
    <script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>
    
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
									</ul></li>
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

        <div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" style="width: max; "></div>
		
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                 
                            <div class="sb-sidenav-menu-heading">관리자게시판</div>

                            <a class="nav-link" href="<c:url value='/admin/admin_Board'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                자유게시판 
                            </a>
                            
                            <a class="nav-link" href="<c:url value='/admin/admin_Shop_List'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-headphones"></i></div>
                                상품 관리
                            </a>

                            <a class="nav-link" href="<c:url value='/admin/admin_Shop_Save'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-guitar"></i></div>
                                상품 등록하기
                            </a>

                            <a class="nav-link" href="<c:url value='/admin/admin_Qaa_List'/>">
                                <div class="sb-nav-link-icon"><i class="far fa-comment-dots"></i></div>
                                Q&A
                            </a>

                            <a class="nav-link" href="<c:url value='/admin/admin_Delete'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-trash-alt"></i></div>
                                탈퇴 신청 리스트
                            </a>

                            <a class="nav-link" href="<c:url value='/admin/admin_Room_List'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-hotel"></i></div>
                                연습실 관리
                            </a>

                            <a class="nav-link" href="<c:url value='/admin/admin_Room_Save'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-layer-group"></i></div>
                                연습실 대여 등록
                            </a>
                            
                        </div>
                    </div>
                </nav>
            </div>
 

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">

                        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle"><i class="fas fa-chevron-left fa-2x" style="color:lightgray"></i></button>
                    </div>

        	<div class="container">
 
             <div class="row">

              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >

                <div class="U_Edge">
                  <div class="U_From">
                    <h3 class="U_Text"><c:out value='${dto.muId}'/>님의 게시글</h3>
                  </div>
                  <div class="panel-body">
                      <div class="col-md-12 col-lg-12 " align="center">
                          <table class="table table-user-information">
                          <tbody>
                            <tr>
                              <td>아이디</td>
                              <td><c:out value='${dto.muId}'/></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                            <tr>
                              <td>제목</td>
                              <td><c:out value='${dto.qnaTitle}'/></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                            
                            <tr>
                              <td>등록일</td>
                              <td><fmt:formatDate value="${dto.qnaDate}"/></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                            <tr>
                                <td>내용</td>
                              	<td><textarea name="qnaDesc" style="width:100%; resize:none; height:300px;" readonly><c:out value='${dto.qnaDesc}'/></textarea></td>
                            </tr>

                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                           </tbody>
                        </table>
                       <!-- <font id="RemoveFont" color="red" size="2"> </font> -->
                         <center class="mt-7">
	                        <div>
	                        	<button class="site-btn"  id="AdminQnaList" onclick="location.href='<c:url value="/admin/admin_Qaa_List"/>'">돌아가기</button>
	                       		<button class="site-btn" id="AdminQnaRemove" onclick="QnaDelete()">삭제하기</button>
	                        </div>
                       	 </center>
                      </div>
                    </div>
                  </div>
                  </div>
                  </div>
                  </div>
                  </main>
                   
                      	<script>
              					function QnaDelete() {
              						if(confirm('정말 삭제 하시겠습니까?')) {
              						$.ajax({
              							type:'GET',
              							url:'<c:url value="/admin/QnaDelete"/>',
              							data: {"qnaNo" : "${dto.qnaNo}"},
              							success:function(result){
              								
              								$("#AdminQnaRemove").hide();
              								window.location.href='<c:url value="/admin/admin_Qaa_List"/>';
              								//$("#RemoveFont").html("NO."+result+"<br>정상적으로 삭제되었습니다.");              								
              							}//success
              						}); //ajax
              					} //if
              						else return false;
              					}//function QnaDelete
            		    </script> 
                  
                </div>
              </div>

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
                                            <a href="<c:url value='/'/>"><img src="../img/logo/logo.png" alt=""></a>
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
<script type="text/javascript" src="../resources/js/page_js/scripts.js"></script>
</body>

</html>
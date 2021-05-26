<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="keywords" content="Staging, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원정보</title>
      
    <!-- 페이지 Style -->
    <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
    <link href="../resources/css/page_css/styles.css" rel="stylesheet" type="text/css">
    
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    
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
		
        <div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" style="width: max; "></div>
		
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                 
                            <div class="sb-sidenav-menu-heading">자유게시판</div>

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
                            
                            <a class="nav-link" href="<c:url value='/member/MemberList'/>">
                                <div class="sb-nav-link-icon"><i class="fas fa-clipboard-list"></i></div>
                                회원 리스트
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
                        <br>
                        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-chevron-left fa-2x" style="color:lightgray"></i></button>
                    </div>
                    <br><br>
                    <div class="container">
                        <h1 class="mt-4">자유 게시판</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">관리자</li>
                            <li class="breadcrumb-item active">게시글</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="wr-header">
                                <i class="fas fa-table mr-1"></i>
                                게시글 목록

                            </div>
                            
                            <div style="text-align:right;">
                       <form action="<c:url value='/admin/admin_Board'/>">
                           <select name="Search">
                              <option value="TitleSearch"<c:out value="${Search eq 'TitleSearch' ? 'selected':''}"/>>제목</option>
                              <option value="SearchSearch"<c:out value="${Search eq 'SearchSearch' ? 'selected' : ''}"/>>내용</option>
                              <option value="IdSearch"<c:out value="${Search eq 'IdSearch' ? 'selected' : ''}"/>>ID</option>
                           </select>
      
                           검색어 : <input type="text" name="Searchtext" id="Searchtext" value="<c:out value="${Searchtext}"/>">
                              <button value="검색하기" class="wr_Botton_2">검 색</button>
                        </form>
                     </div>
                     
                     <script>
						function page1(curPage) {
							
						}
						$(document).on('click', 'a[href="#"]', function(e){
							e.preventDefault();
						});
					</script>
					
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" width="100%" cellspacing="0">
                                        
                                 <tr style="text-align:center;">
                                 	<th>No</th>
                                    <th>ID</th>
                                    <th class="col-md-5" style="width:750px;">제목</th>
                                    <th>작성일</th>
                                    <th>조회수</th>
                                 </tr>
                                 <c:forEach var="bList" items="${list}">
                                 <tr style="text-align:center;">
                                 	<td>${bList.boardNo}</td>
                                    <td>${bList.muId}</td>
                                    <td class="col-md-5" style="width:750px;"><a href="<c:url value='/admin/admin_Board_View?boardNo=${bList.boardNo}'/>">
                                    	${bList.boardTitle}</a></td>
                                    <td>${bList.bDate}</td>
                                    <td>${bList.boardHit}</td>   
                                 </tr>
                                 </c:forEach>
                                 </table>
                                 
                                 <script>
									 function list(page) {
										location.href="${pageContext.request.contextPath}/admin/admin_Board?curPage="+page+
												"&Search=${Search}&Searchtext=${Searchtext}"
										}
								 </script>
		                          <div style="text-align:center;">
		                          		<c:if test="${1<page.curBlock}">
										<a href="#" onclick="list(1)">[처음]</a>
										</c:if>
										
										<c:if test="${1<page.curBlock}">
										<a href="#" onclick="list(${page.prevPage})">[이전]</a>
										</c:if>
										
										<c:forEach begin="${page.blockBegin}" end="${page.blockEnd}" var="num"> 
										<c:choose>
										<c:when test="${num eq page.curPage}">
											<span style="color:red">${num}</span>&nbsp;
										</c:when>
										<c:otherwise>
											<a href="#" onclick="list(${num})">${num}</a>
										</c:otherwise>
										</c:choose>
										</c:forEach>
										
										<c:if test="${page.curBlock <=page.totBlock}">
										<a href="#" onclick="list(${page.nextPage})">[다음]</a>
										</c:if>
											  
										<c:if test="${page.curBlock<=page.totPage}">
										<a href="#" onclick="list(${page.totPage})">[끝] </a>
										</c:if>
			                           
                               		</div>
                                </div>
                            </div>
                        </div>
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
                                            <a href="<c:url value='/'/>"><img src="../resources/img/logo/logo.png" alt=""></a>
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
                
                                
                            </div>
                        </div>
                   
                
                </footer>

<!-- Footer Section End -->   

		<script type="text/javascript" src="../resources/js/page_js/main.js"></script>
        <script type="text/javascript" src="../resources/js/page_js/scripts.js"></script>
    </body>
</html>
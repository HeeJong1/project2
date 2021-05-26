<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta name="description" content="Staging Template">
    <meta name="keywords" content="Staging, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Staging | Template</title>

    <!-- 페이지 Style -->
    <link rel="stylesheet" href="<c:url value='../resources/page_css/bootstrap.min.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='../resources/css/page_css/style.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='../resources/css/page_css/img_size.css'/>" type="text/css"/>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="../resources/js/page_js/jquery-3.3.1.min.js"></script>
	<script src="../resources/js/page_js/jquery-3.6.0.js"></script>
    
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

<div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" ></div>
        <div class="container">
        	<form name="readForm" role="form" method="post">
				<input type="hidden" id="FILE_NO" name="FILE_NO" value=""> 
				 <input type="hidden" id="fileNoDel" name="fileNoDel[]" value=""> 
					<input type="hidden" id="fileNameDel" name="fileNameDel[]" value=""> 
			</form>
            <div class="row">

              <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
         
                <br>
                <div class="U_Edge">
                  <div class="U_From">
                    <h3 class="U_Text"><c:out value='${dto.muId}'/>님의 게시글</h3>
                  </div>
                  <div class="panel-body">
                    <div class="row">
  
                    </div>
  
                      <div class=" col-md-17 col-lg-17 "> 
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
                              <td id="Content_title"><c:out value='${dto.boardTitle}'/></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                            
                            <tr>
                              <td>등록일</td>
                              <td><fmt:formatDate value="${dto.bDate}"/></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                            
                            <tr>
                              <td>조회수</td>
                              <td><c:out value='${dto.boardHit}'/></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                            <tr>
                                <td>내용</td>
                              	<td><textarea name="boardDesc" style="width:100%; resize:none; height:400px;" readonly><c:out value='${dto.boardDesc}'/></textarea></td>
                            </tr>

                            <tr>
                                <td> </td>
                                <td> </td>
                            </tr>
                            <tr>
                                <td>파일 목록</td>
                                <td> 
                                	<c:forEach var="file" items="${file}">
									<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
									</c:forEach>
                                </td>
                            </tr>
                           </tbody>
                        </table>
                        <font id="RemoveFont" color="red" size="2"> </font>
                        <center class="mt-7">
	                        <button class="site-btn"  id="Write_List" onclick="location.href='<c:url value="/board/Write_List"/>'">글 목록</button>
	                        <c:choose>
								<c:when test="${member ne null}">
	                        		<button class="site-btn" id="ContentRemove" onclick="BoardDelete()">삭제하기</button>
	                       			<button class="site-btn"  id="ContentModify" onclick="location.href='<c:url value="/board/U_B_Modify?boardNo=${dto.boardNo}"/>'">글 수정</button>
	                        	</c:when>
	                        </c:choose>
                        </center>
                      </div>
                    </div>
                  </div>

                <script>
              					function BoardDelete() {
              						if(confirm('정말 삭제 하시겠습니까?')) {
              						$.ajax({
              							type:'GET',
              							url:'<c:url value="/board/BoardDelete"/>',
              							data: {"boardNo" : "${dto.boardNo}"},
              							success:function(result){
              								$("#Content_title").hide();
              								$("#Content_detail").hide();
              								$("#ContentModify").hide();
              								$("#ContentRemove").hide();
              								$("#RemoveFont").html("NO."+result+"<br>정상적으로 삭제되었습니다."); 
              								window.location.href='<c:url value="/board/Write_List"/>';
              							}//success
              						}); //ajax
              					} //if
              						else return false;
              					}//function BoardDelete
              					
              					function fn_fileDown(fileNo){
              						var formObj = $("form[name='readForm']");
              						$("#FILE_NO").attr("value", fileNo);
              						formObj.attr("action", '<c:url value="/board/fileDown"/>');
              						formObj.submit();
              					}//function fn_fileDown
            		   </script> 
                  
                </div>
              </div>
            </div>
          </div>
 <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="../resources/img/footer-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="../resources/img/logo.png" alt=""></a>
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
    </div>

</footer>
<!-- Footer Section End -->       

<!-- Js Plugins -->

<script src="../resources/js/page_js/main.js"></script>
</body>

</html>
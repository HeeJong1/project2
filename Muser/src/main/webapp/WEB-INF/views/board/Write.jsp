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
    <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css"/>
    <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>

    <!-- 파비콘 -->
<link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">

</head>

	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='bInsertForm']");
			$(".site-btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "<c:url value='/board/boardWrite'/>");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		
		function fn_valiChk(){
			var regForm = $("form[name='bInsertForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("boardTitle"));
					return true;
				}
			}
		}
		
		function fn_addFile(){
			var fileIndex = 1;
			$(".fileAdd_btn").on("click", function(){
				$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"</button>"
										+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
			});
			$(document).on("click","#fileDelBtn", function(){
				$(this).parent().remove();
			});
		}
	</script>

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
    <!-- Contact Section Begin -->
    <br><br><br>
    <section class="contact spad">
        <div class="container">
            <div class="row">
                
            </div>
            <div class="row">
                               
            </div>
            <div class="row">
                <div class="col-lg-5">
                    <div class="contact__form__text">
                        <div class="section-title">
                            <span>Send</span>
                            <h2>게시글 작성</h2>
                        </div>
                        <p></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="contact__form">
                       
                        <form name=bInsertForm action="<c:url value='/board/boardWrite'/>" method="post" enctype="multipart/form-data">
                            
                            <div class="row" style="width: max" >
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input type="text" name="muId" value="<c:out value='${member.muId}'/>" placeholder="작성자" readonly>
                                </div>

                                <div class="col-lg-12 col-md-6 col-sm-6">
                                    <input type="text" name="boardTitle" placeholder="제목">
                                </div>


                                <div class="col-lg-12">
                                	<textarea name="boardDesc" style="width:100%; resize:none; height:400px;" placeholder="내용"></textarea>
                                </div> 
                                
                                <div class="col-lg-12">
                                    <input type="file" size = "10 * 1024 * 1024" name="bFile">
                                 </div>
                                <!--  <div class="col-lg-12">
                                    <button class="fileAdd_btn" id="FileAdd">파일추가</button>
                                 </div>  -->
                                 <div class="col-lg-12">
                                  <button class="site2-btn">Apply</button>	
                                 </div>

                                
                            </div>

                   
                        </form>
                 
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

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

<script type="text/javascript "src="../resources/js/page_js/main.js"></script>
</body>

</html>
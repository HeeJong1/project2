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
    
    <!-- Checkin 캘랜더 -->
    <script type="text/javascript" src="../resources/js/Checkin_js/Check.js"></script>
    <link rel="stylesheet" href="../resources/css/Check_css/Check.css" type="text/css">
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>

<script>
   $(function() {
       //input을 datepicker로 선언
       $('#bookDate').datepicker({
           dateFormat: 'yy-mm-dd' //달력 날짜 형태
           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
           ,changeYear: true //option값 년 선택 가능
           ,changeMonth: true //option값  월 선택 가능                
           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
           ,buttonText: "선택" //버튼 호버 텍스트              
           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
           ,minDate: "-0" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
           ,maxDate: "+1y" //최대 선택일자(+1D:하루후, +1M:한달후, +1Y:일년후)  
       });                    
       
       //초기값을 오늘 날짜로 설정해줘야 합니다.
       $('#bookDate').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)  
       $('#bookDate').datepicker('getDate');
   });
</script>

    
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
                    <form name="reservationForm" method="post" action="<c:url value='/reservation/reservationInsert'/>" >
                    	<input type="hidden" name="ofNo" value="${dto.ofNo}">
                        <h4 class="mt-4" style="text-align: center;">연습실 예약</h4>
                       
                        <ol class="breadcrumb mb-4">
                            <span id="today"></span>&nbsp;&nbsp;&nbsp;
                            <label for="bookDate">예약 날짜</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="bookDate" id="bookDate">&nbsp;&nbsp;&nbsp;
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                예약 정보<button class="site-btn" style="float:right;" type="submit">예약</button>
                            </div>
                    </form>
                           <c:if test="${msg == false}">
								<div id="fail" style="color:red; text-align:center;">&nbsp;예약 실패!&nbsp;&nbsp;날짜를 다시 선택해주세요!</div>
							</c:if>
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
                                                <th>ID</th><th>예약 번호</th><th>예약 날짜</th><th>최종결제 금액</th>
													
											</tr>
											</thead>
											<tbody>
											<c:forEach var="rList" items="${map.list}">
                                            <tr style="text-align:center;">
                                                <td>${rList.muId}</td>
                                                <td>${rList.resNo}</td>	
                                                <td>${rList.bookDate}</td>
                                                <td>${rList.ofPrice}</td>
                                            </tr>
											</tbody>
											</c:forEach>  
                                    </table>
                     
                                </div>
                            </div>
                            </c:otherwise>
                            </c:choose>
                            <!-- </form> -->
                            
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
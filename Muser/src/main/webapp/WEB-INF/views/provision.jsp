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
                        <a href="<c:url value='/'/>"><img src="resources/img/logo/logo_1.png"style="width: 100px; height:auto;" title="뒤로가기"alt=""></a>
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
                        <h1 class="mt-4">이용약관</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><a href="<c:url value='/'/>">메인</a></li>
                            <li class="breadcrumb-item active">약관</li><br>
                            <tr style="text-align:center;">
                                <td>제1장 총 칙</td>
                                   
                                <td>
                                    제1조 (명칭)<br>
                                    본 사이트의 명칭은 "Muser" 이라 합니다.<br>
                                    제2조 (운영주체)
                                </td><br><br>

                                <td>
                                    제3조 (목적)<br>
                                    본 약관은 회원들이 Muser 에서 제공되는 인터넷관련 컨텐츠와 쇼핑몰을 이용함에 있어서 회사와 이용자의 권리, 의무 및 책임 사항 규정을 목적으로 합니다.
                                </td><br>

                                <td>
                                    제4조 (약관의 변경)
                                    1. 회사가 본 약관을 변경하고자 하는 경우 회사는 변경된 내용을 적용 예정일 7일 전까지 회원에게 통지하여야 합니다. 회원이 적용예정일까지 이의를 제기하지 않으면 변경된 약관을 승인한 것으로 봅니다.<br>
                                    2. 회원이 이의를 제기한 때에는 Muser(muser.co.kr) 사이트에 대하여 탈퇴의사를 밝힌 것으로 봅니다.<br>
                                    제5조 (본 약관에서 정하지 아니한 사항)<br>
                                    이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래 소비자 보호 지침 및 관계법령에 따릅니다.
                                </td><br><br>
                                <td>
                                    제6조 (용어정의)<br>
                                    이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
                                    ▶ ID : 회원의 식별과 이용자의 서비스 이용을 위하여 회원이 선정하고 3조 가 부여<br>
                                    ▶ 비밀번호 : 부여받은 회원 번호와 일치된 사람임을 확인하고 회원 자신의 비밀보호를 위하여 회원 자신이 선정한 문자와 숫자<br>
                                    ▶ 회원정보 : 회원이 자신의 비밀번호를 변경하거나 자기 정보의 열람, 변경 또는 다른 회원의 이용자 번호, 이름 등을 검색할 수 있는 영역<br>
                                    ▶ ??,??,??,??,??,??,?? : 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 지정한 자<br>
                                    제2장 회원의 가입 및 탈퇴
                                </td><br><br>
                                <td>
                                    제7조 (회원)<br>
                                    1. 회원이란 3조 가 회원으로, 적합하다고 인정하는 일반 개인으로서 본 약관에 동의하고 회사의 회원가입양식을 작성하고 ID/비밀번호를 발급 받은 사람을 말합니다.
                                </td><br><br>
                                <td>
                                    제8조 (가입과 탈퇴)<br>
                                    1. 본 사이트에 가입을 희망하는 이용자는 무료로 회원을 가입하실 수 있습니다.<br>
                                    2. 제1항의 경우 가입을 희망하시는 분이 회사의 회원으로서 적합하지 않다고 인정될 경우, 회사는 입회신청을 거절할 수 있고 이 경우 부적격 사유를 통보하여야 합니다.<br>
                                    3. 회원은 언제든지 본 사이트를 탈퇴할 수 있습니다. 탈퇴를 원하실 경우, 운영진에게 이메일을 보내거나 사이트 상의 탈퇴신청에 의해 빠른시일 내에 처리하는 것을 원칙으로 합니다.
                                </td><br><br>
                                <td>
                                    제9조 (회원자격)<br>
                                    본 3조 가 제공하는 서비스 내용은 다음과 같습니다.(서비스 리스트)<br>
                                    1. Muser 정식회원으로 자동 인정합니다.<br>
                                    2. Muser 에서 주최하는 행사에 우선적으로 초대됩니다.<br>
                                    3. Muser 에서 정기적인 이메일 정보제공을 받아 보실 수 있습니다.
                                </td><br><br>
                                <td>
                                    제10조 (고객의 서비스 이용)<br>
                                    1. 제공한 정보에 대한 조회 및 변경은 '로그인' 중 '회원정보수정'에서 가능합니다.<br>
                                    2. 3조 가 관여하지 않은 거래에 대해서는 모든 책임은 개인에게 있습니다. 안전거래가 아닌 거래의 모든 책임은 구매자,판매자 개개인에게 있습니다. 뮬은 어떠한 책임도 지지 않습니다.<br> 
                                    3.약관을 개정한 경우 개정약관은 개정일부터 모든 계약에 적용됩니다. 단, 개정일 전에 가입한 자가 반대의사를 밝혀 회원자격을 포기한 경우에는 개정전 약관을 적용합니다.<br>
                                </td>       
                            </tr>
                        </ol>
                        
                     </div>

                        </div>
                    </div>

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
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
                 
                            <div class="sb-sidenav-menu-heading">연습실 등록</div>

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
                    <div class="container">
                        <h1 class="mt-4">연습실 대여 등록하기</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">관리자</li>
                            <li class="breadcrumb-item active">연습실 등록</li>
                            
                        </ol>
                        
                        <div >
         
                            <br>
                            <div class="U_Edge">
                             
                              <div class="panel-body">
                                <div class="row">
                               
                                </div>
                               	<form name=rInsertForm action="<c:url value='/room/roomInsert'/>" method="post" enctype="multipart/form-data">
                                  <div class=" col-md-17 col-lg-17 "> 
                                    <table class="table table-user-information">
                                      <tbody>
<tr>
                                          <td>연습실 명칭</td>
                                          <td><input type="text" name="ofName" placeholder="연습실 명칭" required="required"></td>
                                        </tr>
                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                        </tr>
<tr>
                                          <td>연습실 간략설명</td>
                                          <td><input type="text" name="ofDesc" placeholder="간략설명" required="required"></td>
                                        </tr>
                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                        </tr>
                                        <tr>
                                          <td>업주명</td>
                                          <td><input type="text" name="repName" placeholder="이름" required="required"></td>
                                        </tr>
                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                        </tr>
                                        <tr>
                                          <td>주소</td>
                                          <td><button class="btn_area" type="button" value="우편번호찾기" onclick="sample2_execDaumPostcode()">
                        						우편번호찾기
                    						</button></td>
                    					</tr>
                    					<tr>
                    						<td> </td>
                                          	<td><input type="text" class="int" name="ofAddr1" id="sample2_postcode" size="35" placeholder="ex) 19xxx"  readonly="readonly"></td>
                                        </tr>
                    					<tr>
                    						<td> </td>
                                          	<td><input type="text" class="int" name="ofAddr2" id="sample2_address" size="35" placeholder="기본주소"  required="required"></td>
                                        </tr>
                                        <tr>
                    						<td> </td>
                                          	<td><input type="text" class="int" id="sample2_extraAddress" size="35" placeholder="동,면,읍"  required="required"></td>
                                        </tr>
                                        <tr>
                    						<td> </td>
                                          	<td><input type="text" class="int" name="ofAddr3" id="sample2_detailAddress" size="35" placeholder="상세주소" required="required"></td>
                                        </tr>
                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                        </tr>

                                        <tr>
                                            <td>전화번호</td>
                            				<td><input type="text" name="repPhone" placeholder="연락처" required="required"></td>
                                        </tr>

                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                        </tr>

                                        <tr>
                                            <td>가격</td>
                            				<td>1h : <input type="text" name="ofPrice" placeholder="가격" required="required">won</td>
                                        </tr>

                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                        </tr>

                                        <tr>
                                            <td>연습실 목록사진</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile" required="required"></td>
                                        </tr>
	<!-- 추가 부분 -->
			<tr>
                                            <td>연습실 다른사진1</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile1" required="required"></td>
                                        </tr>
			<tr>
                                            <td>연습실 다른사진2</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile2" required="required"></td>
                                        </tr>
			<tr>
                                            <td>연습실 다른사진3</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile3" required="required"></td>
                                        </tr>
<tr>
                                            <td>연습실 아이콘 사진1</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile4" required="required"></td>
                                        </tr>
			<tr>
                                            <td>연습실 아이콘 사진2</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile5" required="required"></td>
                                        </tr>
			<tr>
                                            <td>연습실 아이콘 사진3</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile6" required="required"></td>
                                        </tr>
			<tr>
                                            <td>연습실 상세사진</td>
                            				<td><input type="file" size = "10 * 1024 * 1024" name="ofFile7" required="required"></td>
               		</tr>
<!-- 추가 부분 끝-->
                                      </tbody>
                                    </table>
                                    <center class="mt-7">
                                    	<button class="site2-btn" type="submit">연습실 등록하기</button>
                                    </center>
                                  </div>
                                  </form>
                                </div>
                              </div>      
                            </div>
                    </div>
                </main>
     <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="../resources/img/footer-bg.jpg">
        <div class="container">
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
<!-- Footer Section End -->   

		<script type="text/javascript" src="../resources/js/page_js/main.js"></script>
        <script type="text/javascript" src="../resources/js/page_js/scripts.js"></script>
        <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	// 우편번호 찾기 화면을 넣을 element
	var element_layer = document.getElementById('layer');

	function closeDaumPostcode() {
		// iframe을 넣은 element를 안보이게 한다.
		element_layer.style.display = 'none';
	}

	function sample2_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample2_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample2_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample2_postcode').value = data.zonecode;
						document.getElementById("sample2_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample2_detailAddress")
								.focus();

						// iframe을 넣은 element를 안보이게 한다.
						// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
						element_layer.style.display = 'none';
					},
					width : '100%',
					height : '100%',
					maxSuggestItems : 5
				}).embed(element_layer);

		// iframe을 넣은 element를 보이게 한다.
		element_layer.style.display = 'block';

		// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
		initLayerPosition();
	}

	// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	function initLayerPosition() {
		var width = 300; //우편번호서비스가 들어갈 element의 width
		var height = 400; //우편번호서비스가 들어갈 element의 height
		var borderWidth = 5; //샘플에서 사용하는 border의 두께

		// 위에서 선언한 값들을 실제 element에 넣는다.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
				+ 'px';
		element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
				+ 'px';
	}
</script>
    </body>
</html>
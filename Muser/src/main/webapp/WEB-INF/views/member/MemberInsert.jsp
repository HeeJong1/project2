<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />
<!--===============================================================================================-->	
    <link rel="stylesheet" type="text/css" href="<c:url value='../resources/css/member_css/Join.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='../resources/css/member_css/button.css'/>">
<!--===============================================================================================-->

<!-- 파비콘 -->
<link rel="icon" type="image/png" sizes="16x16" href="<c:url value="../resources/img/MS.png"/>">

<!-- jquery -->
<script src="<c:url value='../resources/js/page_js/jquery-3.6.0.js'/>"> </script>


<title>회원가입</title>

</head>
<body>
	 <!-- header -->
        <div id="header">
            <a href="<c:url value='/'/>"><img src="../resources/img/logo/logo_1.png" style="width: 100px; height:auto;" title="메인으로" alt=""></a>
        </div>

        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">
            <form name="form1" method="post" action="<c:url value='/member/family' />"  onsubmit="return beforeSubmit()">
			<%-- <input type="hidden" name="reservation_number" id="reservation_number" value="${reservation_number}"> --%>
				<!-- ID -->
				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
						<button class="btn_area" type="button" id="duplicateCheck" onclick="idOverlap()">중복체크</button>
						<font id="OK" size="2" color="red"> </font>
					</h3>
					<span class="box int_id"> <input type="text" class="int" name="muId" id="muId" size="85" placeholder="ID" required="required" maxlength="12">
					</span> <span class="error_next_box"></span>

				</div>

				<!-- PW1 -->
                <div>
                    <h3 class="join_title">
                    	<label for="pswd1">비밀번호</label><font id="PasswordPattern" size="2" color="red"> </font></h3>
                    	<span class="box int_pass">
                        <input type="password" class="int" id="m_password" size="85" placeholder="Password" required="required" maxlength="15">                  
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2"> 비밀번호 확인</label><font id="PasswordCheck" size="2" color="red"> </font></h3>
                    <span class="box int_pass_check">
                        <input type="password" class="int" name="muPw" id="m_password2" size="85" placeholder="Password Check" required="required" maxlength="15">                       
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">성함</label></h3>
                    <span class="box int_name">
                        <input type="text" class="int" name="muName" id="muName" size="35" placeholder="Name" required="required">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>
                    <span class="box int_name">
                    <input class="int" type="date" name="muBirth"> 
                    </span>
                	<span class="error_next_box"></span>
                </div>
                    
                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">이메일</label></h3>
                    <span class="box int_email">
                        <input type="email" class="int" name="muEmail" id="muEmail" size="85" placeholder="Email" required="required">
                    </span>                  
                    <span class="confirm_next_box"></span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">연락처</label></h3>
                    <span class="box int_mobile">
                        <input type="text" class="int" name="muPhone" id="muPhone" size="35" placeholder="Tel" required="required">
                    </span>
                    <span class="error_next_box"></span>    
                </div>

                <!-- ADRESS -->
                <div>
                    <h3 class="join_title"><label for="adress">주소</label>
                    <button class="btn_area" type="button" value="우편번호찾기" onclick="sample2_execDaumPostcode()">
                        우편번호찾기
                    </button>
                    </h3>
                    <div id="bir_wrap">
                        
                        <div id="bir_ad">
                            <span class="box">
                                <input type="text" class="int" name="muAddr1" id="sample2_postcode" size="35" placeholder="ex) 19xxx"  readonly="readonly">
                            </span>
                            <span class="box">
                                <input type="text" class="int" name="muAddr2" id="sample2_address" size="35" placeholder="기본주소"  required="required">
                            </span>
                        </div>

                        <div id="bir_ad">
                            <span class="box">
                                <input type="text" class="int" id="sample2_extraAddress" size="35" placeholder="동,면,읍"  required="required">
                            </span>
                            <span class="box">
                                <input type="text" class="int" name="muAddr3" id="sample2_detailAddress" size="35" placeholder="상세주소" required="required">
                            </span>
                        </div>

                    </div>
                       
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button class="snip1535">
                        <span>가입하기</span>
                    </button>
                </div>

              </form>

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
        
        <div id="dropDownSelect1"></div>
        
 <script src="<c:url value='../resources/js/page_js/main.js'/>"></script>
    
<script>
	var Check = false;

	function idOverlap(){
		$.ajax({
			type : "POST", 
			url : "${pageContext.request.contextPath}/member/idOverlap",
			data : {"muId" : $('#muId').val()			 
			},
			success : function(result){//int로  서버에서 처리 할 것.
				if(result == 1){					
					$("#OK").html('사용 가능한 ID 입니다.')
					Check = true;
				} else if (result == 0) {					
					$("#OK").html('중복되는 ID입니다!')
					Check = false;
				} else if ($.trim(result) == -1){//0					
					$("#OK").html('시작은 영문으로만,특수문자,공백 없는 영문, 숫자 포함 5-12자 이하로 해주세요!')
					Check = false;
				}// end if	
				
			}, //end success			
			error : function(){
				alert('idOverlap()함수 통신 실패')
			} // end error
			
		}); // end ajax
		
	}// end idOverlap ()
	
	$(function() {
		var pwRegex =  /^.*(?=^.{5,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
		$("#m_password").keyup(function() {
			var passWordTest=pwRegex.test($("#m_password").val());
			 if(!passWordTest){
				 $("#PasswordPattern").html('비밀번호 패턴(5~10자리의 특수문자/알파벳/숫자)')
			 }else {
				$("#PasswordPattern").html('ok')
			}
		});
	});
		
	$(function() {
		$("#m_password2").keyup(function() {
			if ($("#m_password").val() == $("#m_password2").val()) {
				$("#PasswordCheck").html('비밀번호가 일치합니다')
				$('#m_password').change(function() {
					$("#PasswordCheck").html('비밀번호가 일치하지 않습니다.')
				})
			} else {
				$("#PasswordCheck").html('비밀번호가 일치하지 않습니다.')
			}
		});
	});
	
	function beforeSubmit() {
		if ($("#sample2_postcode").val() == "" || null) {
			alert('우편번호 찾기를 클릭해주세요')
			return false;
		}

		if (Check) {
			if (($("#PasswordPattern")).text() == 'ok'){
				if ($("#PasswordCheck").text() == '비밀번호가 일치합니다') {
				
					alert('가입이 완료되었습니다');
					return true;
				}
			} else {
				alert("Password 를 확인해주세요")
				return false;
			}
		} else {
			alert('ID 중복검사를 해주세요')
			$("#OK").html('중복 검사를 해주세요!!')
			return false;
		}
	}
	$(function() {
		$("#muId").change(function() {
			Check = false;
		});
	});
</script>

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






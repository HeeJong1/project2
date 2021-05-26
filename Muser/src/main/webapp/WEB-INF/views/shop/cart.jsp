<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Staging Template">
    <meta name="keywords" content="Staging, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Staging | Template</title>

    <!-- 아이콘 -->
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <!-- 페이지 Style -->
    <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
    <script type="text/javascript" src="../resources/js/page_js/jquery-3.6.0.js"></script>
    
    <link rel="stylesheet" href="../resources/css/Cashi_css/style.css" type="text/css">
    <!-- 파비콘 -->
    <link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">

	<!-- Payment API -->	
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<!-- API END-->
		
    <!-- 메세지 창 스크립트 처리 -->
    <script>
      function addOk() { // 추가 완료
        alert("장바구니에 추가 되었습니다.");
      }
    </script>
<script>
/* API Begin */
	function test11(){
		var IMP = window.IMP; // 생략가능
		IMP.init('imp24495762'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		
		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    //name : '주문명:10000원 결제',
		    amount : 100, //실제 결제 금액
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456', 
		    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        /* window.location.href="<c:url value='/'/>"; */
		        window.location.href='<c:url value="/cart/cartDeleteAll"/>';
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		});
	}
/* API END*/
</script>	
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
		
<!-- Breadcrumb Section Begin -->		
        <div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" ></div>
              <!--slide end--> 

        
        <section class="cart_are_padding">
          
          <div class="container">
            <div class="cart_inner">
              <div class="table-responsive">

                  <center><h1 class="cart_font">Cart</h1></center>
                  <c:choose>
                  	<c:when test ="${map.count==0}">
                  	 <table class="table">
	                  	<thead>	
		                  	<tr>
		                      <th scope="col">Product</th>
		                      <th scope="col">Price</th>
		                      <th scope="col">Quantity</th>
		                      <th scope="col">Total</th>
		                      <th scope="col">삭제</th>
		                    </tr>
		                 </thead>
		                 <tbody>
		                  	  <tr height="280">
		                  	  	<td colspan="5"><h2>장바구니가 비었습니다.</h2></td>
		                  	  	
		                  	  </tr>
	                  	  </tbody>
                  	  </table>
                  	</c:when>
                    <c:otherwise>
                    <form name="form1" id="form1" method="post" action="<c:url value='/cart/cartUpdate'/>">
                 <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">Product</th>
                      <th scope="col">Price</th>
                      <th scope="col">Quantity</th>
                      <th scope="col">Total</th>
                      <th scope="col">삭제</th>
                    </tr>
                  </thead>
                  <c:forEach var="row" items="${map.list}">
                  <tbody>
                    <tr>
                      <td>
					   <div class="media-body">
                            <p><img src="../resources/gfile/${row.gdsImg1}" width="130" height="100">${row.gdsName}</p>
                        </div>
                      </td>
                      <td>
                        <h5><fmt:formatNumber value="${row.gdsPrice}" pattern="###,###,###"/></h5>
                      </td>
                      <td>
                        <input class="qty-input form-group" type="number" name="amount" min="1" max="${row.gdsAmount}" value="${row.cartAmount}" style="text-align: center; width: 100px;
                        height: 40px; border: 1px solid #eeeeee"/>  
                        <input type="hidden" name="gdsNo" value="${row.gdsNo}">
                      </td>
                      <td>
                        <h5><fmt:formatNumber value="${row.money}" pattern="###,###,###"/></h5>
                      </td>
                      <td>
                      	<button class="site-btn" type="button" onclick ="location.href='<c:url value="/cart/cartDelete?cartNo=${row.cartNo}"/>'">삭제</button>
                      </td>
                    </tr>
                    </c:forEach>
                    <tr>
                      <td></td>
                      <td></td>
                      <td>
                        <h5>Subtotal</h5>
                      </td>
                      <td>
                        <h5><fmt:formatNumber value="${map.sumMoney}" pattern="###,###,###"/></h5>
                      </td>
                    </tr>
                    
                    </tbody>
                    
                </table>
              
              </div>
            </div>
            <tr class="bottom_button">
              <td>
              <input type="hidden" name="count" value="${map.count}">
                <button class="btn_1" type="submit">수정하기</button>
              </td>
              <td>

              </td>
              <td></td>
              <td></td>
              <td>
                <div class="cupon_text float-right">
                  <a class="btn_1" href="#" onclick="test11()">
                    buy</a></a>
                </div>
              </td>
            </tr>
            </form>
            </c:otherwise>
            </c:choose>
        </section>

        <!-- 화살표 -->
        <div style="position: fixed; bottom: 50px; right: 5px;">
          <a href="#">
          <img src="../resources/img/Check_bt_2.png" title="위로 가기" width="50PX" ></a>
          </div>
        
        <!--================End Cart Area =================-->


 <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="../resources/img/footer-bg.jpg">
        <div class="container">
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
                            <p>muse 본 사이트에서 물품 및 연습실 을 직접 관여하지 안습니다. muse에 등록된 판매물품과 연습실 예약 내용은 등록자가 등록한것으로
                            일체의 책임을 지지 않습니다.<br>
                            muse 운영진이 사용하는 아이디는 ?,?,?,?,? 이며 운영진은 회원에게 개별적으로 접촉하지 않습니다.</p>
                        </ul>
                    </div>
                </div>
            

                
            </div>


</footer>
<!-- Footer Section End -->       
</body>
<!-- Js Plugins -->

<script type="text/javascript" src="../resources/js/page_js/main.js"></script>
 
</html>
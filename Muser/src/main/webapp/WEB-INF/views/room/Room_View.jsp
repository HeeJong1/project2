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
    
        <!-- 페이지 Style -->
        <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
        <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
        <script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>
        <link href="https://raw.githubusercontent.com/daneden/animate.css/master/animate.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../resources/css/member_css/button.css">

      <!-- 파비콘 -->
      <link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">
      
      <style>
            .star-input>.input,
            .star-input>.input>label:hover,
            .star-input>.input>input:focus+label,
            .star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('../resources/img/grade_img.png')no-repeat;}
            .star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
            .star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
            .star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
            star-input>.input.focus{outline:1px dotted #ddd;}
            .star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
            .star-input>.input>label:hover,
            .star-input>.input>input:focus+label,
            .star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
            .star-input>.input>label:hover~label{background-image: none;}
            .star-input>.input>label[for="p1"]{width:30px;z-index:5;}
            .star-input>.input>label[for="p2"]{width:60px;z-index:4;}
            .star-input>.input>label[for="p3"]{width:90px;z-index:3;}
            .star-input>.input>label[for="p4"]{width:120px;z-index:2;}
            .star-input>.input>label[for="p5"]{width:150px;z-index:1;}
            .star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
            
            .star-rating {width:170px;display:inline-block;background-size:200px;height:28px;padding:10px;line-height:50px;margin:4px 2px 1px 2px;}
         	.star-rating>b{display:inline-block;width:102px; font-size:16px;text-align:right; vertical-align:middle;line-height:70px;}
/* .star-rating {width:225px;white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-rating,.star-rating span {display: inline-block;vertical-align:middle;background:url('../resources/img/grade_img.png')no-repeat; }
.star-rating span{width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
  */
         </style>

<!-- 메세지 창 스크립트 처리 -->
<script>
    function addOk() { // 추가 완료
        alert("장바구니에 추가 되었습니다.");
        location.href="#"
    }

</script>

    </head>


    <body>
      <div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" style="width: max;"></div>
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
        <div class="breadcrumb-option spad set-bg"  >           
              <!--slide end--> 
        </div>


        <!-- 배너 Start -->
        <%-- <c:forEach var="rview" items="${dto}"> --%>
        <div class="breadcrumb-option spad set-bg"  style="width: max; " >
            <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">
                            <a style="text-align: center;"><a href="#" target="_blank" ><img src="../resources/rfile/${dto.ofImg2}"alt="slide"  style=" width:3000px;"></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center">

                            <a style="text-align: center;"><a href="#" target="_blank" ><img src="../resources/rfile/${dto.ofImg3}"alt="slide"  style=" width:3000px;"></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="mask flex-center">
                      <div class="container">
                        <div class="row align-items-center"> 
                            <a style="text-align: center;"><a href="#" target="_blank" ><img src="../resources/rfile/${dto.ofImg4}"alt="slide"  style=" width:3000px;"></a></a>                   </div>
                      </div>
                    </div>
                  </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
              <!--slide end--> 
        </div>

        <!-- 배너 end -->
        
        <div class="container-fluid" style="padding-left:0px; padding-right:0px;">
            <div class="content-wrapper">   
                <div class="item-container">   
                    <div class="container">   
                        <div class="col-md-12">
                            <div>
                                <br><br>
                            </div>
                            
                            <div class="container service1-items col-sm-2 col-md-2 pull-left">
                                <center>
                                    <a id="item-1" class="service1-item">
                                        <img src="../resources/rfile/${dto.ofImg5}" alt="" style="margin-left: -60px;"></img>
                                    </a>
                                    <a id="item-2" class="service1-item">
                                        <img src="../resources/rfile/${dto.ofImg6}" alt="" style="margin-left: -60px;"></img>
                                    </a>
                                    <a id="item-3" class="service1-item">
                                        <img src="../resources/rfile/${dto.ofImg7}" alt="" style="margin-left: -60px;"></img>
                                    </a>
                                    

                                </center>
                            </div>
                        </div>
                            
                        <div class="col-md-7">
                            <br>
                            <div class="product-title"><h2>${dto.ofName}</h2></div>
                            <div class="product-desc"><h2>${dto.ofDesc}</h2></div>
                            <br><br>
                            <div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                            <br><br>
                            <hr>
                            <br><br><br>
                            <div class="product-price"><h2><fmt:formatNumber value="${dto.ofPrice}" pattern="###,###,###"/></h2></div>
                            <div class="product-stock"><h2>In Stock</h2></div>
                            <br><br>
                            <hr>
                            <br>
                            <c:choose>
                            <c:when test="${member ne null}">
                            <div class="btn-group wishlist">
                                <button type="button" class="btn btn-danger"  onClick="location.href='<c:url value='/room/CheckIn?ofNo=${dto.ofNo}'/>'">
                                    
                                    <H2>예약하기</H2>
                                </button>
                            </div>
                            </c:when>
                            <c:otherwise>
                            	<div class="btn-group wishlist"><h2>예약은 로그인 후 가능합니다.</h2></div>
                            </c:otherwise>
                        
                        </c:choose>
                            <br><br>
                            
                            <br><br>
                            
                        </div>
                    </div> 
                </div>
                <div class="container-fluid">      
                    <div class="col-md-12 product-info">
                            <ul id="myTab" class="nav nav-tabs nav_tabs">
                                
                                <li class="active"><a href="#service-one" data-toggle="tab">제품 상세정보</a></li>
                                <li><a href="#service-two" data-toggle="tab">반품안내</a></li>
                                <li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
                                
                            </ul>
                        <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="service-one">
                                 <center>
                                    <img src="../resources/rfile/${dto.ofImg8}"alt=""></img><!-- 기타 상세보기 -->
                                </center>                 
                                </div>
                             
                      <%--  </c:forEach> --%>
                            <div class="tab-pane fade" id="service-two">
                                
                                <img src="../resources/img/Change.PNG"alt=""></img><!-- 반품안내보기 -->
                                        
                              <!--   </section> -->
                                
                            </div>
                            <div class="tab-pane fade" id="service-three" >  <!--start review  -->
                                <div class="container" >
                                    <h2 class="text-center">Review</h2>
                                    
                                    <div class="card">
                                        <div class="card-body" width="500px";> 
                                            <form name="reviewCommentForm" class="row" action="<c:url value='/room/roomReviewInsert'/>" method="POST">
                                                <div class="col-md-2">
                                                    <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
                                                    <p class="text-secondary text-center">
                                                    	<c:out value='${member.muId}'/>
                                                    	<input type="hidden" name="muId" value="<c:out value='${member.muId}'/>"readonly>
                                                    </p>
                                                </div>
                                                <div class="col-md-10">
                                                    <p>
                                                        <c:choose>
                                                    	<c:when test="${member ne null}">
                                                        <a class="float-left"><textarea cols='90' rows='5' name='rReviewDesc' style="resize: none;"></textarea></a>
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a class="float-left"><textarea cols='90' rows='5' name='rReviewDesc' style="resize: none;" readonly="readonly">로그인 후 이용가능한 서비스 입니다.</textarea></a>
                                                        </c:otherwise>
                                                        </c:choose>
                                                        <h3 style="text-align: center;">평점</h3>
                                                        <span class="star-input">
                                                            <span class="input">
                                                                <input type="radio" name="stars" value="1" id="p1">
                                                                <label for="p1">1</label>
                                                                <input type="radio" name="stars" value="2" id="p2">
                                                                <label for="p2">2</label>
                                                                <input type="radio" name="stars" value="3" id="p3">
                                                                <label for="p3">3</label>
                                                                <input type="radio" name="stars" value="4" id="p4">
                                                                <label for="p4">4</label>
                                                                <input type="radio" name="stars" value="5" id="p5">
                                                                <label for="p5">5</label>
                                                              </span>
                                                              <output for="stars" name="stars"><b>0</b>점</output>						
                                                        </span>
                                                        <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                                                   </p>
                                                   <div class="clearfix"></div>
                                                    
                                                    <p>
                                                    	<c:if test="${member ne null}">
                                                        <button class="snip1538" type="submit">댓글</button>
                                                       <!--  <a class="float-right btn btn-outline-primary ml-2"> <i class="fa fa-reply"></i> Reply</a>
                                                        <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a> -->
                                                        </c:if>
                                                   </p>
                                                </div>
                                                
                                            </form>
                                            <form class="card card-inner" id="rvModifyForm" action="<c:url value='/room/roomReviewModify'/>" method="post">
                                                <div class="card-body">
                                                <c:forEach var="rrvList" items="${list}">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid"/>
                                                            <p class="text-secondary text-center">${rrvList.muId}</p>
                                                        </div>
                                                        <div class="col-md-10">
                                                            <p>

                                                         	<!-- <h3 style="text-align: center;">평점</h3> -->
                                                        	<div class="star-rating">
                                                            
                                                            <c:choose>
                                                            	<c:when test="${rrvList.stars==0}">
                                                                <span class='star-rating'>
															        <img src="../resources/img/grade0_img.png">
															    </span>
                                                                </c:when>
                                                            	<c:when test="${rrvList.stars==1}">
                                                                <span class='star-rating'>
															        <img src="../resources/img/grade1_img.png">
															    </span>
                                                                </c:when>
                                                                <c:when test="${rrvList.stars==2}">
                                                                <span class='star-rating'>
															        <img src="../resources/img/grade2_img.png">
															    </span>
                                                                </c:when>
                                                                <c:when test="${rrvList.stars==3}">
                                                                <span class='star-rating'>
															        <img src="../resources/img/grade3_img.png">
															    </span>
                                                                </c:when>
                                                                <c:when test="${rrvList.stars==4}">
                                                                <span class='star-rating'>
															        <img src="../resources/img/grade4_img.png">
															    </span>
                                                                </c:when>
                                                                <c:when test="${rrvList.stars==5}">
                                                                <span class='star-rating'>
															        <img src="../resources/img/grade5_img.png">
															    </span>
                                                                </c:when>
                                                                </c:choose>
                                                       
                                                              <b><c:out value='${rrvList.stars}'/>점</b>
                                                              
                                                              </div>
                                                              <c:choose>
                                                              <c:when test="${member.muId eq rrvList.muId}">
                                                          		<a class="float-left"><textarea cols='90' rows='5' name='rReviewDesc' style="resize: none;font-size: 16px;">${rrvList.rReviewDesc}</textarea></a>		
                                                       		</c:when>
                                                       		<c:otherwise>
                                                       		<a class="float-left"><textarea cols='90' rows='5' name='rReviewDesc' style="resize: none;font-size: 16px;" readonly="readonly">${rrvList.rReviewDesc}</textarea></a>
                                                       		</c:otherwise>
                                                       		</c:choose>
                                                        <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                                                        </p>
                                                        <font id="DeleteFont" color="red" size="2"> </font>
                                                            	<c:if test="${member.muId eq rrvList.muId}">
                                                       		 	<button class="snip1538" type="submit">수정하기</button>
                                                       		 	<button class="snip1538" onclick="ReviewDelete()">삭제하기</button>
                                                       		 	<!-- <a class="float-right btn btn-outline-primary ml-2"> <i class="fa fa-reply"></i> Reply</a>
                                                        		<a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a> -->
                                                        		</c:if>
                                                            </div>
                                                        </div>
                                                        </c:forEach>
                                                    </div>
                                                </form>
                                                <script>
                                                	function ReviewDelete(){
                                                		if(confirm('정말 삭제하시겠습니까?')){
                                                			$.ajax({
                                                				type:'GET',
                                                				url:'<c:url value="/room/roomReviewDelete"/>',
                                                				data: {"rReviewNo":"${rrvList.rReviewNo}"},
                                                				success:function(result){
                                                					$("#rvModifyForm").hide();
                                                					$("#DeleteFont").html("NO."+result+"가 삭제되었습니다.");
                                                				}
                                                			})
                                                		}
                                                		else return false;
                                                	}
                                                </script>
                                        </div>
                                    </div>
                               
                                </div> 
                            </div> <!--end review  -->
                        </div>
                        <hr>
                    </div>
                </div>
<br><br>

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
                            <p>muser 본 사이트에서 물품 및 연습실 을 직접 관여하지 안습니다. muser에 등록된 판매물품과 연습실 예약 내용은 등록자가 등록한것으로
                            일체의 책임을 지지 않습니다.<br>
                            muser 운영진이 사용하는 아이디는 ?,?,?,?,? 이며 운영진은 회원에게 개별적으로 접촉하지 않습니다.</p>
                        </ul>
                    </div>
                </div>
            </div>

</footer>
<!-- Footer Section End -->            
<script type="text/javascript" src="../resources/js/page_js/main.js"></script>
<script type="text/javascript" src="../resources/js/page_js/star.js"></script>
</body>

</html>
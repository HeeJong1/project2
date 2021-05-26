<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Staging Template">
    <meta name="keywords" content="Staging, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Staging | Template</title>

    <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">   
    <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script type="text/javascript" src="../resources/js/page_js/jquery-3.3.1.min.js"></script>
 

    <!-- 파비콘 -->
    <link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">



</head>


    <body>
    <div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" style="width: max; "></div>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>
    
        <!-- Offcanvas Menu Begin -->
        <div class="offcanvas-menu-overlay"></div>
        <div class="offcanvas-menu-wrapper">

            <div id="mobile-menu-wrap"></div>

        </div>
        <!-- Offcanvas Menu End -->
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
                              <li><a href="<c:url value ='/member/Login'/>">로그인</a></li>
                              <li><a href="<c:url value='/member/MemberInsert'/>">회원가입</a></li>
                           </ul></li>
                     </c:when>
                     <c:otherwise>
                        <li><a href="#">Logout</a>
                           <ul class="dropdown">
                              <li><a href="<c:url value='/member/MemberView?muId=${member.muId}'/>">내정보</a></li>
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
         <div class="canvas__open"><i class="fa fa-bars"></i></div>
      </div>
    </header>
        <!-- Header Section End -->
        <br><br>

        <div class="container">
            <div class="row mb-3 mt-5">
            <div class=" mx-auto col-md-6">
              <div class="card shadow-lg bg-white">
               <div class="U_From">
                    <h2 class="card-title text-center font-weight-bolder text-uppercase text-white-50">회원 정보 수정</h2>
                </div>
                <div class="card-body">
                <form class="needs-validation" action="<c:url value='/member/Mu_Modify'/>" method="POST">
                    
                    <div class="form-group">
                        <label for="muId">아이디</label>
                        <input type="text" class="form-control" id="muId"  name="muId" value="${dto.muId}" readonly="readonly">
                        
                    </div>
                    
                    <div class="form-group " >
                        <label class="font-weight-bold" for="m_password">비밀번호</label>
                        <input type="password" class="form-control" id="m_password" placeholder="변경하실 비밀번호를 입력해주세요." required="required">
                        
                    </div>
                    
                    <div class="form-group " >
                        <label class="font-weight-bold" for="muPw">비밀번호 확인</label>
                        <input type="password" class="form-control" id="muPw" name="muPw" placeholder="변경하신 비밀번호를 입력해주세요."  required="required">
                        
                    </div>
                    
                    <div class="form-group">
                        <label for="muName">성함</label>
                        <input type="text" class="form-control" id="muName" name="muName" value="${dto.muName}" required="required">
                        
                    </div> 
                    
                    <div class="form-group " >
                        <label class="font-weight-bold" for="muBirth">생년월일</label>
                        <input type="date" class="form-control" id="muBirth"  name="muBirth" value="${dto.muBirth}">
                        
                    </div>                                                                                                                                
                    
                    <div class="form-group">
                        <label for="muEmail">이메일</label>
                        <input type="email" class="form-control" id="muEmail" value="${dto.muEmail}" name="muEmail" required="required">
                        
                    </div>
                    
                    <div class="form-group " >
                        <label class="font-weight-bold" for="muPhone">연락처</label>
                        <input type="text" class="form-control" id="muPhone" name="muPhone" value="${dto.muPhone}"  required="required">
                        
                    </div>

                    <div class="form-group " >
                        <label class="font-weight-bold" for="address">주소
                        <button class="btn_area" type="button" value="우편번호찾기" onclick="sample2_execDaumPostcode()">
                        우편번호찾기
                    	</button>
                    	</label>
                        <input type="text" class="form-control" name="muAddr1" id="sample2_postcode" size="35" value="${dto.muAddr1}"  readonly="readonly">
                        <input type="text" class="form-control" name="muAddr2" id="sample2_address" size="35" value="${dto.muAddr2}"  required="required">
                        <input type="text" class="form-control" id="sample2_extraAddress" size="35" placeholder="동,면,읍">
                        <input type="text" class="form-control" name="muAddr3" id="sample2_detailAddress" size="35" value="${dto.muAddr3}" required="required">
                        
                    </div>
                           
                    <div class="mt-3">
                    <button type="submit" class="btn-primary1" value="변경하기">변경하기</button>                   
                    <button class="btn-primary1" onclick="location.href='<c:url value='/member/KillMember'/>'" value="탈퇴">탈퇴</button>         
                    <button class="btn-primary1" onclick="location.href='<c:url value='/member/MemberView?muId=${member.muId}'/>'">돌아가기</button>
                    </div>
                    
                  </form>
                  
              </div>
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

<!-- Js Plugins -->
<script src="../resources/js/page_js/main.js"></script>
</body>

</html>
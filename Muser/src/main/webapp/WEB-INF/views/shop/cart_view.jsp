<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Staging Template">
        <meta name="keywords" content="Staging, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Staging | Template</title>
  
        <!-- Css Styles -->
        <link rel="stylesheet" href="../resources/css/page_css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="../resources/css/page_css/style.css" type="text/css">
        <link rel="stylesheet" href="../resources/css/page_css/img_size.css" type="text/css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="../resources/css/Cashi_css/style.css" type="text/css">
        
        <!-- 파비콘 -->
    	<link rel="icon" type="image/png" sizes="16x16" href="../resources/img/MS.png">
        
</head>
<body>
<div class="breadcrumb-option spad set-bg" data-setbg="../resources/img/bg_guitar_1.jpg" style="width: max; "></div>
    <header class="header">
        <div class="container-fluid">
            <div class="row" >
                <div class="col-lg-5">
                    <div class="header__logo" >
                        <ul class="header_ul">
                            <a href="<c:url value='/'/>"><img src="../resources/img/logo/logo_1.png"style="width: 100px; height:auto;" alt=""></a>
                        </ul>
                    </div>
                </div>


                    <nav class="header__menu mobile-menu">
                       
                    </nav>
               
                    
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
  <br><br>
  <br>
  <!-- Header Section End -->
  
  <!-- Breadcrumb Section Begin -->
  <div >           
        <!--slide end--> 
  </div>

  

    
    <div class="container">
      <div class="cart_inner">
        <div class="table-responsive">
          <table class="table">
            <h1 class="cart_font" style="text-align: center;">Cart</h1>
            <thead>
              
              <tr>
                <th scope="col">Product</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <div class="media">
                    <div class="d-flex">
                      <img src="../resources/assets/img/gallery/card1.png" alt="" />
                    </div>
                    <div class="media-body">
                      
                      <p><img src="../resources/img/EL_g1.jpg" alt="" width="150">Minimalistic shop for multipurpose use </p>
                      
                    </div>
                  </div>
                </td>
                <td>
                  <h5>$360.00</h5>
                </td>
                <td>
                  <input class="qty-input form-group" type="number" value="1" style="text-align: center;  width: 100px;
                  height: 40px; border: 1px solid #eeeeee"/>  
                  
                </td>
                <td>
                  <h5>$720.00</h5>
                </td>
              </tr>

              </tbody>
            
          </table>
      
        </div>
      </div>
      <tr class="bottom_button">
        
        <td>
          <div class="cupon_text float-right">
            
            <button class="btn_1" style=padding:10px; onclick="opener.location.href='cart.html';window.close();">장바구니로 가기</button>

          </div>
        </td>
      </tr>
</body>
</html>
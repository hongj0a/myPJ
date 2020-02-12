<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>PORFOLIO &mdash; BY HONGJINYOUNG</title>
    <link rel="shortcut icon" type="image/png" href="resources/images/like.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:400,900|Source+Serif+Pro&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="resources/css/aos.css">


    <!-- MAIN CSS -->
    <link rel="stylesheet" href="resources/css/style.css">

	<link rel="stylesheet"
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link href="/resources/css/board.css" rel="stylesheet">
  </head>

	
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>



      <header class="site-navbar site-navbar-target" role="banner">

        <div class="container">
          <div class="row align-items-center position-relative">

            <div class="col-3">
              <div class="site-logo">
                <a href="/" class="font-weight-bold">HONG JIN YOUNG</a>
              </div>
            </div>

            <div class="col-9  text-right">


              <span class="d-inline-block d-lg-none"><a href="#" class="text-primary site-menu-toggle js-menu-toggle py-5"><span class="icon-menu h3 text-primary"></span></a></span>



              <nav class="site-navigation text-right ml-auto d-none d-lg-block" role="navigation">
                <ul class="site-menu main-menu js-clone-nav ml-auto ">
                  <li class="active"><a href="/" class="nav-link">Home</a></li>
                  <li><a href="/portfolio" class="nav-link">Portfolio</a></li>
                  <li><a href="/about" class="nav-link">About</a></li>
                  <li><a href="/services" class="nav-link">Services</a></li>
                  <li><a href="/blog" class="nav-link">Blog</a></li>
                  <li><a href="/contact" class="nav-link">Contact</a></li>
                </ul>
              </nav>
            </div>


          </div>
        </div>

      </header>
      
      
      
       <div class="site-section-cover">
      <div class="container">
        <div class="row align-items-center text-center justify-content-center">
          <div class="col-lg-6">
            <h1 class="text-white mb-4">Contact Me</h1>
            <p class="lead">저한테 하고싶은 말을 남겨주세요.</p>

          </div>
        </div>
      </div>
    </div>
      
	<div class="container" style="text-align: center; background: #FFFFFF; padding:30px 50px; min-height: 800px">
	
	    <div class="bsubject">
	        <h3 style="margin: 0 0 20px 0; text-align: left;"> ${board.title}</h3>
		        <div class="subject-info-form" style="margin-bottom: 20px">
		    	    <span class="subject-info">글번호 <b>${board.seq}</b></span>
			        <span class="subject-info">조회수<b>${board.readnum}</b></span>
		            <span class="subject-info">작성자 <b>${board.user}</b></span>
		            <span class="subject-info">날짜<b>${board.regdate}</b></span>
		        </div>
		        
       		 	 <div>
		        	<div style="min-height:300px">
		            
			            <img src="" style="max-width: 300px; display: block; margin: 0 auto">
			           
			            <span>
			              ${board.content}
			            </span>	
			            </div>
			            
	                   <div style="text-align: right">
	                   
	                  	   <a style="margin-right: 10px; color:black; " href="contact">목록</a>
	                   
	                       <a style="margin-right: 10px; color:black; " href='innerContent?seq=${board.seq}'>수정</a>
	                       <a href="delete?seq=${board.seq}" style="color:black">삭제</a>
                  	 </div>
               </div>
           </div>
       </div>
       
    <div class="site-section bg-light">
      <div class="container">
        <div class="row mb-4 text-center">
          <div class="col">
            <a href="https://www.facebook.com/profile.php?id=100002467685799"><span class="m-2 icon-facebook"></span></a>
            <a href="https://www.instagram.com/hongj0_/"><span class="m-2 icon-instagram"></span></a>
            <a href="https://github.com/hongj0a/"><span class="m-2 icon-github"></span></a>
          </div>
        </div>
        <div class="row mt-5 justify-content-center">
          <div class="col-md-7 text-center">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by HJY
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
        </div>
      </div>
    </div>

</div>



</body>
</html>

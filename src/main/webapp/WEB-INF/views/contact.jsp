<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false"%>
<!doctype html>
<html lang="en">

  <head>
    <title>PORTFOLIO &mdash; BY HONGJINYOUNG</title>
    <link rel="shortcut icon" type="image/png" href="resources/images/like.png">
	<link rel="icon" href="https://www.flaticon.com/authors/smashicons"/>
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


    <div class="site-section bg-left-half">
      <div class="container">


       
	<div class="container" style="text-align: center; background: #FFFFFF; padding:30px 5px; min-height: 800px">
	<button class="btn board-form-btn pull-right" onclick="location.href='contact'" style="border: 1px solid grey;">처음목록</button>
	<button class="btn board-form-btn pull-right" onclick="location.href='input'" style="border: 1px solid grey; margin-right:5px;">글쓰기</button>
    	<H3 class="pull-left" style="margin: 5px 0 10px 0;">자유게시판</H3>
    	
    		<table class="table table-hover table table-striped" id="ptList">
		       
		        <tr>
		            <th style="text-align: center; width:7%;">번호</th>
		            <th style="text-align: center; width:40%;">제목</th>
		            <th style="text-align: center; width:10%;">작성자</th>
		            <th style="text-align: center; width:15%;">조회수</th>
		            <th style="text-align: center; width:15%;">작성날짜</th>
		        </tr>
		        
		       <c:forEach items="${list}" var="list">  
		        	<tr>
			            <td style="text-align: center; width:7%; font-size: small">${list.seq}</td>
			            <td style="text-align: left; width:40%;">
			                <a href='content${pageMaker.makeQuery(pageMaker.cri.page)}&seq=${list.seq}' style="color:black">${list.title}
			                </a>
			            </td>
			            <td>${list.user}</td>
			            <td>${list.readnum}</td>
			            <td>${list.regdate}</td>
			        </tr>
		        </c:forEach>
		        
    		</table>

  			
  			
  				<div>
	  				<div class="form-inline" style="float:left;">
		  					<select id="searchTypeSel" name="searchType" style="height:30px; width: 25%; float: left;">
		  						<option value="" >검색조건</option>
		  						<option value="t" >제목</option>
		  						<option value="c">내용</option>
		  						<option value="w" >작성자</option>
		  						<option value="tc">제목+내용</option>
		  						<option value="all">제목+내용+작성자</option>
		  					</select>
  						<input class="form-control" type="text" id="keyword" name="keyword" style="float:left;width: 50%;" value="" placeholder="검색어를 입력하세요">
	  					<button id="searchBtn" class="btn board-form-btn pull-left" style="border: 1px solid grey;">검색</button>
	  				</div>
  				</div>


	<div class="text-center" style="float: right;">
	<nav aria-label="pagination">
		<ul class="pagination">
		
			<!-- prev 버튼 -->
			<li id="page-prev">
				<a href="contact${pageMaker.makeQuery(pageMaker.startPage-1)}" aria-label="Prev">
					<span aria-hidden="true"><</span>
				</a>
			</li>
			
			<!-- 페이지 번호 (시작 페이지 번호부터 끝 페이지 번호까지) -->
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			    <li id="page${idx}">
				    <a href="contact${pageMaker.makeQuery(idx)}">
				    	<!-- 시각 장애인을 위한 추가 -->
				      	<span>${idx}<span class="sr-only">(current)</span></span>
				    </a>
			    </li>
			</c:forEach>
			
			<!-- next 버튼 -->
			<li id="page-next">
			    <a href="contact${pageMaker.makeQuery(pageMaker.endPage + 1)}" aria-label="Next">
			    	<span aria-hidden="true">></span>
			    </a>
			</li>
			
		</ul>
	  </nav>
 	 </div> 

    </div>
  </div> <!-- END .site-section -->



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

    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/jquery-migrate-3.0.0.js"></script>
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/jquery.sticky.js"></script>
    <script src="resources/js/jquery.waypoints.min.js"></script>
    <script src="resources/js/jquery.animateNumber.min.js"></script>
    <script src="resources/js/jquery.fancybox.min.js"></script>
    <script src="resources/js/jquery.stellar.min.js"></script>
    <script src="resources/js/jquery.easing.1.3.js"></script>
    <script src="resources/js/bootstrap-datepicker.min.js"></script>
    <script src="resources/js/isotope.pkgd.min.js"></script>
    <script src="resources/js/aos.js"></script>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    
    <script src="resources/js/typed.js"></script>
            <script>
            var typed = new Typed('.typed-words', {
            strings: ["Business"," Startups"," Organization", " Company"],
            typeSpeed: 80,
            backSpeed: 80,
            backDelay: 4000,
            startDelay: 1000,
            loop: true,
            showCursor: true
            });
            </script>

  <script type ="text/javascript">
	$(function(){
		//perPageNum select 박스 설정
		setPerPageNumSelect();
		//searchType select 박스 설정
		setSearchTypeSelect();
		
		//등록, 삭제 후 문구 처리
		var result = '${result}';
		$(function(){
			if(result === 'registerOK'){
				$('#registerOK').removeClass('hidden');
				$('#registerOK').fadeOut(2000);
			}
			if(result === 'removeOK'){
				$('#removeOK').removeClass('hidden');
				$('#removeOK').fadeOut(2000);
			}
		})
		
		//prev 버튼 활성화, 비활성화 처리
		var canPrev = '${pageMaker.prev}';
		if(canPrev !== 'true'){
			$('#page-prev').addClass('disabled');
		}
		
		//next 버튼 활성화, 비활성화 처리
		var canNext = '${pageMaker.next}';
		if(canNext !== 'true'){
			$('#page-next').addClass('disabled');
		}
		
		//현재 페이지 파란색으로 활성화
		var thisPage = '${pageMaker.cri.page}';
		//매번 refresh 되므로 다른 페이지 removeClass 할 필요는 없음->Ajax 이용시엔 해야함
		$('#page'+thisPage).addClass('active');
	})
	
	function setPerPageNumSelect(){
		var perPageNum = '${pageMaker.cri.perPageNum}';
		var $perPageSel = $('#perPageSel');
		var thisPage = '${pageMaker.cri.page}';
		
		$perPageSel.val(perPageNum).prop("selected",true);
		$perPageSel.on('change',function(){
			window.location.href = "contact?page="+thisPage+"&perPageNum="+$perPageSel.val();
		})
	}
	function setSearchTypeSelect(){
		var $searchTypeSel = $('#searchTypeSel');
		var $keyword = $('#keyword');
		
		$searchTypeSel.val('${pageMaker.cri.searchType}').prop("selected",true);
		//검색 버튼이 눌리면
		$('#searchBtn').on('click',function(){
			var searchTypeVal = $searchTypeSel.val();
			var keywordVal = $keyword.val();
			//검색 조건 입력 안했으면 경고창 
			if(!searchTypeVal){
				alert("검색 조건을 선택하세요!");
				$searchTypeSel.focus();
				return;
			//검색어 입력 안했으면 검색창
			}else if(!keywordVal){
				alert("검색어를 입력하세요!");
				$('#keyword').focus();
				return;
			}
			var url = "contact?page=1"
				+ "&perPageNum=" + "${pageMaker.cri.perPageNum}"
				+ "&searchType=" + searchTypeVal
				+ "&keyword=" + encodeURIComponent(keywordVal);
			window.location.href = url;
		})
	}
  </script>
		
  </div>
  <script src="resources/js/main.js"></script>

  </body>

</html>

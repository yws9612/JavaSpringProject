<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>부들부들 | 운동 초보자들의 커뮤니티</title>
<link rel="icon" type="image/x-icon" href="resources/img/logo/favicon.ico">
<link rel="shortcut icon" type="image/x-icon" href="resources/img/logo/favicon.ico">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

</head>
<body>

<c:import url="/WEB-INF/views/includes/header.jsp"/>

  <div id="myCarousel" class="carousel slide pointer-event" data-bs-ride="carousel" style="margin-top:80px">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" aria-label="Slide 1" class=""></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class="active"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class="" aria-current="true"></button>
    </div>
<!-- 광고 슬라이드 부분 -->    
    <div class="carousel-inner">
      <div class="carousel-item">
      	<a href="${root }/board/list">
		<img src="/resources/img/ad/ad01.png" class="d-md-block w-100" alt="광고사진">
		</a>
      </div>
      
      <div class="carousel-item active">
        <img src="/resources/img/ad/ad02.png" class="d-md-block w-100" alt="광고사진">
        <div class="container">
          <div class="carousel-caption" style="color: black">
            <h1>두번째 광고 헤드라인</h1>
            <p>광고 내용 적기</p>
            <p><a class="btn btn-lg btn-primary" href="#">바로가기</a></p>
            <br><br><br>
          </div>
        </div>
      </div>
      
      <div class="carousel-item">
      	<a href="https://salady.com/" target="_blank">
        <img src="/resources/img/ad/ad03.png" class="d-md-block w-100" alt="광고사진">
        </a>
        </div>
      </div>
      
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  
<br>

<div class="container marketing pt-5">
<!-- 오늘의 추천운동(카드모양) -->
	<div class="container pt-5 pb-5">
	<h1>오늘의 추천운동&nbsp;<a class="btn btn-primary" href="#">더보기 »</a></h1>
	
	<div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/exercise/dumbell_purple.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">운동이름</h5>
	    			<p class="card-text">운동방법 설명<br>
	    			<span class="badge text-bg-info">#운동부위</span><br>
	    			<span class="badge text-bg-warning">#주의부위</span></p>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">운동이름</h5>
	    			<p class="card-text">운동방법 설명<br>
	    			<span class="badge text-bg-info">#운동부위</span><br>
	    			<span class="badge text-bg-warning">#주의부위</span></p>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">운동이름</h5>
	    			<p class="card-text">운동방법 설명<br>
	    			<span class="badge text-bg-info">#운동부위</span><br>
	    			<span class="badge text-bg-warning">#주의부위</span></p>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">운동이름</h5>
	    			<p class="card-text">운동방법 설명<br>
	    			<span class="badge text-bg-info">#운동부위</span><br>
	    			<span class="badge text-bg-warning">#주의부위</span></p>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">운동이름</h5>
	    			<p class="card-text">운동방법 설명<br>
	    			<span class="badge text-bg-info">#운동부위</span><br>
	    			<span class="badge text-bg-warning">#주의부위</span></p>
	  			</div>
			</div>
		</div>
	</div>
	</div>
	
   <hr class="featurette-divider">

<!-- 인기 게시글 Top5 -->
	<div class="container pt-5 pb-5">
	<h1>인기 게시글 Top5&nbsp;<a class="btn btn-primary" href="#">더보기 »</a></h1>
	<div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">게시글 1</h5>
	    			<p class="card-text">게시글 내용</p>
	    			<a href="#" class="btn btn-primary">자세히보기 »</a>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">게시글 2</h5>
	    			<p class="card-text">게시글 내용</p>
	    			<a href="#" class="btn btn-primary">자세히보기 »</a>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">게시글 3</h5>
	    			<p class="card-text">게시글 내용</p>
	    			<a href="#" class="btn btn-primary">자세히보기 »</a>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">게시글 4</h5>
	    			<p class="card-text">게시글 내용</p>
	    			<a href="#" class="btn btn-primary">자세히보기 »</a>
	  			</div>
			</div>
		</div>
		
		<div class="col p-3">
			<div class="card p-3">
	  			<img src="/resources/img/ad/ad01.jpg" class="card-img-top" alt="사진오류">
	  			<div class="card-body">
	    			<h5 class="card-title">게시글 5</h5>
	    			<p class="card-text">게시글 내용</p>
	    			<a href="#" class="btn btn-primary">자세히보기 »</a>
	  			</div>
			</div>
		</div>
	</div>
	</div>

   <hr class="featurette-divider">
   
     <!-- 간단 프로필 및 즐겨찾기 리스트-->
     <!-- login체크해야 함 -->
    <c:catch>
    <c:choose>
	<c:when test="${not empty user }">
    <div class="row featurette">
      <div class="col-md-5">
        <h2 class="featurette-heading fw-normal lh-1">${sessionScope.user.id}님의 프로필</h2>
        <p class="lead">이름 : ${sessionScope.uvo.u_name }</p>
        <p class="lead"> 주소 : ${sessionScope.uvo.u_addr } </p>  
      </div>
      <!-- <div class="col-md-7">
        <jsp:include page="/WEB-INF/views/user/myPage.jsp" flush="false"/>
      </div> -->
    </div>
	</c:when>
	<c:otherwise>
	<div class="row text-center">
      <div class="col">
      	<br><br><br>
        <h2>로그인 후 이용 가능합니다.</h2>
        <br><br>
        <p><a class="btn btn-secondary" href="${root }/user/login">로그인하기 »</a></p>
        <br><br><br>
        </div>
      </div>
	</c:otherwise>
	</c:choose>
	</c:catch>
  </div><!-- /.container -->
  
<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp"/>


</body>
</html>
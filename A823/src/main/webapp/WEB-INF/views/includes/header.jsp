<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>

<script 
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" 
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" crossorigin="anonymous">
	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.5/dist/web/variable/pretendardvariable-jp.css" />
<style>
	@import url("/resources/css/bootstrap.min.css");
      *{
		font-family: "Pretendard JP", Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Hiragino Sans", "Apple SD Gothic Neo", Meiryo, "Noto Sans JP", "Noto Sans KR", "Malgun Gothic", Osaka, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
      }
</style>

</head>
<body>

<div class="fixed-top bg-white border-bottom">
	<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3">
      
      <a href="${root }main/main" class="d-flex align-items-center mb-md-0 text-dark text-decoration-none">
		<!-- 로고 이미지 삽입 -->
		<img src="/resources/img/logo/logo.png" class="d-block" alt="부들부들로고" width="60">
      </a>
	  <div class="col-md-1"></div>
      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="${root }exercise/hometraining" class="nav-link px-auto link-dark fs-5 fw-bold">운동방법</a></li>
		<li><a href="${root }board/write" class="nav-link px-auto link-dark fs-5 fw-bold">운동게시판</a></li>
		<li><a href="${root }board/write" class="nav-link px-auto link-dark fs-5 fw-bold">운동일지</a></li>
		<li><a href="${root }board/write" class="nav-link px-auto link-dark fs-5 fw-bold">헬스장정보</a></li>
      </ul>
	  <div class="col-md-1"></div>
	      <div class="dropdown text-end">
	      	<a href="#" class="d-block link-dark text-decoration-none dropdown-toggle"data-bs-toggle="dropdown" aria-expanded="false"> 
	      		<i class="bi bi-person-fill fs-5"></i>
			</a> 
			${u_id}
	        <ul class="dropdown-menu text-small">
		       	<c:catch>
					<c:choose>
						<c:when test="${empty user}">
							<li><a class="dropdown-item" href="${root }user/login">로그인</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="${root }user/join">회원가입</a></li>	
						</c:when>
						<c:otherwise>
							<li><a class="dropdown-item fs-1" href="${root }user/my_page">북마크한 게시글</a></li>
							<li><a class="dropdown-item" href="${root }user/my_page">내가 쓴 게시글</a></li>
							<li><a class="dropdown-item" href="${root }user/my_page">내가 쓴 댓글</a></li>
							<li><a class="dropdown-item" href="${root }user/my_page">내가 쓴 리뷰</a></li>
							<li><a class="dropdown-item" href="${root }user/my_page">내 프로필</a></li>
							<li><a class="dropdown-item" href="${root }user/my_page">계정 설정</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="${root }user/logout">로그아웃</a></li>					
						</c:otherwise>
					</c:choose>
				</c:catch>
			</ul>
      	</div>
      
    </header>
    </div>
</div>

	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
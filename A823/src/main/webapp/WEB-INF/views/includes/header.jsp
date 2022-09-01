<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
	<header class="p-3 mb-3 border-bottom">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="main"
					class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
					<!-- 로고 이미지 삽입 -->
					<img src="/resources/img/logo/logo3.png" class="d-block" alt="부들부들로고" width="60">
					<img src="/resources/img/logo/logo.png" class="d-block" alt="부들부들로고" width="80">
				</a>
				<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="list" class="nav-link px-2 link-dark">운동방법</a></li>
					<li><a href="list" class="nav-link px-2 link-dark">운동게시판</a></li>
					<li><a href="list" class="nav-link px-2 link-dark">운동일지</a></li>
					<li><a href="list" class="nav-link px-2 link-dark">헬스장정보</a></li>
				</ul>
				<!--검색기능<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          		<input type="search" class="form-control" placeholder="Search..." aria-label="Search">
        	</form>-->
				<div class="dropdown text-end">
					<a href="#"
						class="d-block link-dark text-decoration-none dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"> <i
						class="bi bi-person-fill"></i>
					</a>
					<ul class="dropdown-menu text-small">
						<li><a class="dropdown-item" href="#">북마크한 게시글</a></li>
						<li><a class="dropdown-item" href="#">내가 쓴 게시글</a></li>
						<li><a class="dropdown-item" href="#">내가 쓴 댓글</a></li>
						<li><a class="dropdown-item" href="#">내가 쓴 리뷰</a></li>
						<li><a class="dropdown-item" href="#">내 프로필</a></li>
						<li><a class="dropdown-item" href="#">계정 설정</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">로그인</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
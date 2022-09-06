<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Login</title>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href='https://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<style>
	@import url("/resources/css/bootstrap.min.css");
      *{
		font-family: "Pretendard JP", Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Hiragino Sans", "Apple SD Gothic Neo", Meiryo, "Noto Sans JP", "Noto Sans KR", "Malgun Gothic", Osaka, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
      }
</style>
</head>



<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"/>

<div class="container" style="margin-top:100px">
<div class="row justify-content-md-center">
<div class="col col-md-5 shadow p-3 mb-5 bg-body rounded">
	<!-- LOGIN FORM -->
		<div class="text-center logo pt-5"><h2>login</h2></div>
		<!-- Main Form -->
		<div class="login-form-1">
			<c:if test="${fail == true }">
				<div class="alert alert-danger">
					<h3>로그인 실패</h3>
					<p>아이디 비밀번호를 확인해주세요</p>
				</div>
			</c:if>
			<form:form class="text-left" method="post" action="${root}user/loginProc" modelAttribute="user">
				<div class="main-login-form">
					<div class="login-group">
						<div class="form-group pt-3">
							<form:label for="u_id" class="sr-only" path="u_id">ID</form:label> 
							<form:input class="form-control" path="u_id" placeholder="ID"/>
							<form:errors path="u_id" style="color:red"></form:errors>
						</div>

						<div class="form-group pt-3">
							<form:label for="u_pw" class="sr-only" path="u_pw">PW</form:label> 
							<form:password class="form-control" path="u_pw" placeholder="password"/>
							<form:errors path="u_pw" style="color:red"></form:errors>
						</div>

						<div class="form-group login-group-checkbox pt-3">
							<input class="form-check-input" type="checkbox" id="lg_remember" name="lg_remember">
							<label for="lg_remember">저장하기</label>
						</div>
					</div>
					<div class="d-grid gap-2 pt-3">
					<form:button class="btn btn-primary">
						로그인
					</form:button>
					</div>
				</div>
				
				<div class="btn-group input-group mb-3 pt-3 pb-5" role="group">
				<a class="btn btn-outline-primary" href="findID">ID 찾기</a><br>
				<a class="btn btn-outline-primary" href="findPW">비밀번호 찾기</a><br>
				<a class="btn btn-outline-primary" href="join">회원가입 하기</a>
				</div>
			</form:form>
		</div>
		<!-- end:Main Form -->
</div></div></div>
<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp"/>


</body>
</html>
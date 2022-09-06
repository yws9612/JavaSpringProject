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

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
</head>



<body>
	<!-- LOGIN FORM -->
	<div class="text-center" style="padding: 50px 0">
		<div class="logo">login</div>
		<!-- Main Form -->
		<div class="login-form-1">
			<c:if test="${fail == true }">
				<div class="alert alert-danger">
					<h3>로그인 실패</h3>
					<p>아이디 비밀번호를 확인해주세요</p>
				</div>
			</c:if>
			<form:form class="text-left" method="post" action="${root}user/loginProc" modelAttribute="user">
				<div class="login-form-main-message"></div>
				<div class="main-login-form">
					<div class="login-group">
						<div class="form-group">
							<form:label for="u_id" class="sr-only" path="u_id">ID</form:label> 
							<form:input class="form-control" path="u_id" placeholder="ID"/>
							<form:errors path="u_id" style="color:red"></form:errors>
						</div>

						<div class="form-group">
							<form:label for="u_pw" class="sr-only" path="u_pw">PW</form:label> 
							<form:password class="form-control" path="u_pw" placeholder="password"/>
							<form:errors path="u_pw" style="color:red"></form:errors>
						</div>

						<div class="form-group login-group-checkbox">
							<input type="checkbox" id="lg_remember" name="lg_remember">
							<label for="lg_remember">저장하기</label>
						</div>
					</div>
					<form:button class="login-button">
						<i class="fa fa-chevron-right"></i>
					</form:button>
				</div>
				<div class="etc-login-form">
					<p>
						ID를 잊어버리셨나요?<a href="findID">ID 찾기</a>
					</p>
					<p>
						비밀번호를 잊어버리셨나요?<a href="findPW">비밀번호 찾기</a>
					</p>
					<p>
						새로운 사용자? <a href="join">회원가입 하기</a>
					</p>
				</div>
			</form:form>
		</div>
		<!-- end:Main Form -->
	</div>



</body>
</html>
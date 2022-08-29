<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
</head>

<body>

<!-- FORGOT PASSWORD FORM -->
<div class="text-center" style="padding:50px 0">
	<div class="logo"><h3>비밀번호 찾기</h3></div><br>
	
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="forgot-password-form" class="text-left" method = "post" action = "/user/login">

			<div class="main-login-form">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="email을 입력하세요">
						<br>
						<input type="text" class="form-control" placeholder="ID를 입력하세요">						
					</div>
					
				<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
			</div>
			
			<div class="etc-login-form">
				<p>아이디가 기억나지 않는다면? <a href="findID">여기서 아이디 찾기</a></p>
				<p>가입이 필요하면? <a href="join">여기서 회원가입</a></p>
			</div>
		</form>
	</div>
	<!-- end:Main Form -->
</div>

</body>
</html>
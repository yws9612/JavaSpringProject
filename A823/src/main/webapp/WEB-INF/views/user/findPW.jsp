<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PW 찾기</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">
</head>


<body>

<form action = "/user/findPwProc" method = "post">
<!-- FORGOT ID FORM  -->
<div class="text-center" style="padding:50px 50px 50px 50px">

	<div class="logo"><h3>PW 찾기</h3></div><br>

	<div class="form-floating mb-3">
	<input type="text" class="form-control" placeholder="ID" name = "u_id">
	<label for="floatingInput" style="text-align:left">ID</label>
	
	</div>

	<div class="form-floating mb-3">
	<input type="email" class="form-control" placeholder="Email" name = "u_email">
	<label for="floatingInput" style="text-align:left">Email</label>
	</div>

						
	<button class="btn btn-lg btn-primary" type="button">PW 찾기</button><br/><br/>
			
	<p>아이디가 기억나지 않는다면? <a href="findID">여기서 아이디 찾기</a></p>
	<p>가입이 필요하면? <a href="join">여기서 회원가입</a></p>

</div>
</form>
</body>
</html>
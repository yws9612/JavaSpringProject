<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ID 찾기</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">
</head>


<body>


<!-- FORGOT ID FORM  -->
<form action = "/user/findIdProc" method = "post">
<div class="text-center" style="padding:50px 50px 50px 50px">

	<div class="logo"><h3>ID 찾기</h3></div><br>

	<div class="form-floating mb-3">
	<input type="text" class="form-control" placeholder="이름">
	<label for="floatingInput" style="text-align:left">이름</label>
				
	</div>

	<div class="form-floating mb-3">
	<input type="email" class="form-control" placeholder="Email">
	<label for="floatingInput" style="text-align:left">Email</label>
	</div>		
	
	<button class="btn btn-lg btn-primary" type="submit">ID 찾기</button><br/><br/>	
	
</div>
</form>
</body>
</html>
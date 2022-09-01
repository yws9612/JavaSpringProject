<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">
</head>

<body>
<div class="text-center" style="padding:50px 50px 50px 50px">


	<p>입력하신 정보로 아래의 아이디를 찾았습니다.</p>     
	${id}

 
 	<p>비밀번호가 기억나지 않는다면? <a href="findPW">여기서 비밀번호 찾기/변경</a></p>
	<p>로그인하러 가고싶다면? <a href="login">여기서 로그인</a></p>
 

</div>

</body>
</html>
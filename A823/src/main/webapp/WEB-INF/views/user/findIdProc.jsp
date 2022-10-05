<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8"name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>
<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"/>
<div class="container" style="margin-top:100px">
<div class="row justify-content-md-center">
<div class="col col-md-5 shadow p-5 mb-5 bg-body rounded text-center">

	<p>입력하신 정보로 아래의 아이디를 찾았습니다.</p>
	<br>
	<h5>${id}</h5>

 	<br>
 	<p>비밀번호가 기억나지 않는다면? <a href="findPW">비밀번호 찾기/변경</a></p>
	<p>로그인하러 가고싶다면? <a href="login">로그인</a></p>
 
</div>
</div>
</div>
<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp"/>
</body>
</html>
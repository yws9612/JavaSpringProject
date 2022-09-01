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
	<c:if test="${getId != null && getId !='' }">
	${getID}      
 	</c:if>  

 
 

</div>

</body>
</html>
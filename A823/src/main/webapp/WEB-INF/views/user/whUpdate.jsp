<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>키/몸무게 수정</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">

</head>

<body>
<div class="container-fluid">
<div class="row">
<div class="col-md-5">
<br/><br/>

	<form action="${root}user/whUpdate" method="post">
		<div class="input-group mb-3">
		<span class="input-group-text">키</span>
		<input type="text" class="form-control" placeholder="ex)199.9">

		<span class="input-group-text">몸무게</span>
		<input type="text" class="form-control" placeholder="ex)99.9">			    
		</div><br/>

		<div class="button" style="float:right;" >
		<input type = "submit" id="send"  class="btn btn-primary">저장하기</button>
		</div>		
     	
	</form>
	</div></div></div><br/>	
</body>
</html>
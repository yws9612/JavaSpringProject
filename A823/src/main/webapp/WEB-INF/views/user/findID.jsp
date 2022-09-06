<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ID 찾기</title>

</head>


<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"/>

<div class="container" style="margin-top:100px">
<div class="row justify-content-md-center">
<div class="col col-md-5 shadow p-3 mb-5 bg-body rounded">
<!-- FORGOT ID FORM  -->
<form action = "/user/findIdProc" method = "post">
<div class="text-center" style="padding:50px 50px 50px 50px">

	<div class="logo"><h3>ID 찾기</h3></div><br>

	<div class="form-floating mb-3">
	<input type="text" class="form-control" placeholder="이름" name = "u_name">
	<label for="floatingInput" style="text-align:left">이름</label>
				
	</div>

	<div class="form-floating mb-3">
	<input type="email" class="form-control" placeholder="Email" name = "u_email">
	<label for="floatingInput" style="text-align:left">Email</label>
	</div>		
	
	<button class="btn btn-lg btn-primary" type="submit">ID 찾기</button><br/><br/>	
	
</div>
</form>
</div></div></div>
<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp"/>
</body>
</html>
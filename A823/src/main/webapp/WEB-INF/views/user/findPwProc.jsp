<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"/>


<div class="container" style="margin-top:100px">
<div class="row justify-content-md-center">
<div class="col col-md-5 shadow p-3 mb-5 bg-body rounded">

<!-- 비밀번호 변경 폼 -->
<div class="text-center" style="padding:50px 50px 50px 50px">
<form action = "/user/findPwProc" method = "post">

<legend>변경할 비밀번호를 입력하세요</legend>

	<div class="input-group mb-3">
	<span class="input-group-text">비밀번호</span>
	<input type="hidden" name = "u_id" value = "${id}">
	<input type="hidden" name = "u_email" value ="${email}">
	<input type="password" class="form-control" placeholder="6자리 이상" name = "u_pw" minlength = "6" id = "u_pwd">
	<input type="password" class="form-control" placeholder="비밀번호 확인" id = "u_pwd2">
	</div>
	<div id="pwdChk"></div>

	<div class="button" style="float:right;" >
	<button class="btn btn-primary" type = "submit" id = "change">비밀번호 변경</button>
	</div>		
	

</form>
</div>
</div></div></div>
<script type="text/javascript">
	
$(function(){
	$("#change").attr("type", "button");
	$("#u_pwd2").blur(function(){
		$('.mb-3').attr('style', 'margin-bottom: 5px !important');
		if($("#u_pwd").val() != $("#u_pwd2").val()){
			if($("#u_pwd2").val() != ''){
				$("#pwdChk").text("비밀번호가 일치하지 않습니다.");
				$("#pwdChk").css("color","red");
				$("#u_pwd2").val('');
				$("#u_pwd2").focus();
			}
		}else {
			$("#pwdChk").text("비밀번호가 일치합니다.");
			$("#pwdChk").css("color", "blue");
			$("#change").attr("type", "submit");
		}
	})
	
})
</script>

<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">


</head>

<body>
<form action = "/user/findPwProc" method = "post">
<div class="container-fluid">
<div class="row">
<div class="col-md-5">
<br/><br/>

<legend>변경할 비밀번호를 입력하세요</legend>

	<div class="input-group mb-3">
	<span class="input-group-text">비밀번호</span>
	<input type="hidden" name = "u_id" value = "${id}">
	<input type="hidden" name = "u_email" value ="${email}">
	<input type="password" class="form-control" placeholder="6자리 이상" name = "u_pw">
	<input type="password" class="form-control" placeholder="비밀번호 확인">
	</div>

	<div class="button" style="float:right;" >
	<button class="btn btn-primary" type = "submit" onclick = "on()" >비밀번호 변경</button>
	</div>		
	
	
			
</div>	
</div>
</div>

</form>
<script type="text/javascript">
	function on(){
		alert("비밀번호 변경이 완료되었습니다!");
	}
</script>
</body>
</html>
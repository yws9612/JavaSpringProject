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
  <title>정보수정</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">

  
  <!-- kko zipcode -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	
	function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#addr1").value =  data.address
        }
    }).open();
	}
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>

<div class="container-fluid">
<div class="row ">
<div class="col">
<br/><br/>

	<form action="${root}user/infoUpdate" method="post">
		<div class="input-group mb-3">
		<span class="input-group-text">비밀번호 변경</span>
		<input type = "password" class="form-control" placeholder="6자리 이상" name="u_pw" id = "pass1" minlength = "6"/>
		<input type="password" class="form-control" placeholder="비밀번호 확인" id = "pass2"/>
		</div><br/>
		<div id ="passChk"></div>
		
		<input type="hidden" value="${user.u_id }" name = "u_id"/>
		<input type="hidden" value="${user.u_no }" name = "u_no"/>
			    
		<div class="input-group mb-3">
		<span class="input-group-text">우편번호</span>
		<input type="text" id="zipcode" readonly="readonly" class="form-control" placeholder="검색해주세요">

		&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="col align-self-end" >
		<input type="button" onclick="kakaopost()" value="우편번호 검색" class="btn btn-primary"/><br></div>
		</div>
		<br/>  
			
		<div class="input-group mb-3">
		<span class="input-group-text">주소</span>
		<input type="text" placeholder="우편번호 검색시 자동으로 입력됩니다" readonly="readonly" class="form-control" id = "addr1" name = "u_addr" />
		</div>
			  
		<div class="input-group mb-3">
		<input type="text" placeholder="상세주소" class="form-control"/>
		</div><br/>
			

		<div class="button" style="float:right;" >
		<input type = "submit" class="btn btn-primary" value="저장" id = "save">
		<button onclick="javascript:window.close()" class="btn btn-primary">닫기</button>
		</div>	
	</form>



</div></div></div>
<script type="text/javascript">
$(function(){
	$("#save").attr("type", "button");
	$("#pass2").blur(function(){
		$('.mb-3').attr('style', 'margin-bottom: 5px !important');
		if($("#pass1").val() != $("#pass2").val()){
			if($("#pass2").val() != ''){
				$("#passChk").text("비밀번호가 일치하지 않습니다.");
				$("#passChk").css("color","red");
				$("#pass2").val('');
				$("#pass2").focus();
			}
		}else {
			$("#passChk").text("비밀번호가 일치합니다.");
			$("#passChk").css("color", "blue");
			$("#save").attr("type", "submit");
		}
	})
	
})
</script>

</body>

</html>
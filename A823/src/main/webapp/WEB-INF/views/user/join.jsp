<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
  <title>부들부들 | 회원가입</title>

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
	
	<!-- 약관 전체선택/해제 jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 
	<script>
	$(document).ready(function() { // 전체 선택 클릭시 전부 선택 / 해제
	$(":checkbox").eq(0).change(function(event) {
	$(":checkbox:gt(0)").prop("checked", $(this).prop("checked"));
	});

	// 2개 전부 체크시 전체 선택 체크 / 하나라도 체크 해제시 전체 선택 해제
	$(":checkbox:gt(0)").click(function(event) {
	if ($(":checkbox:gt(0):checked").length == 2) {
	$(":checkbox:eq(0)").prop("checked", true);
	} else {
	$(":checkbox:eq(0)").prop("checked", false);	}
	});
	});
</script>


</head>

<body>

<!-- header -->
<c:import url="/WEB-INF/views/includes/header.jsp"/>

<div class="container-fluid" style="margin-top:100px">
<div class="row justify-content-md-center">
<div class="col-md-5 col-md-5 shadow p-3 mb-5 bg-body rounded">
<br>
		<h2 style="text-align: center">회원가입</h2><br>
		<form action="${root}user/join" method="post" id="frm">
			<div class="input-group mb-3">
	
			<span class="input-group-text">아이디</span>
			<input type="text" class="form-control" placeholder="중복확인해주세요" name = "u_id" id="u_id">
			&nbsp;&nbsp;&nbsp;&nbsp;
			
			<div class="col align-self-end" >
			<button  type="button" class="btn btn-primary" id="checkId">중복확인</button></div>
			<div id="msg"></div>
			</div><br/>
			
			
			
			<div class="input-group mb-3">
			<span class="input-group-text">이름</span>
			<input type="text" class="form-control" name="u_name">
			</div><br/>
				  
			<div class="input-group mb-3">
			<span class="input-group-text">비밀번호</span>
			<input type="password" class="form-control" placeholder="6자리 이상" name="u_pw" id="u_pw1" minlength = "6">
			<input type="password" class="form-control" placeholder="비밀번호 확인" id="u_pw2">
			<div id="pwChk"></div>
			</div><br/>
				  
			
			<div class="input-group mb-3">
			<span class="input-group-text">E-MAIL</span>
			<input type="email" class="form-control" placeholder="중복확인해주세요" name = "u_email">
	
			&nbsp;&nbsp;&nbsp;&nbsp;		
			<div class="col align-self-end" >
			<button  type="button" class="btn btn-primary">중복확인</button></div>
			</div><br/>
			
				    
			<div class="input-group mb-3">
			<span class="input-group-text">우편번호</span>
			<input type="text" id="zipcode" readonly="readonly" class="form-control" placeholder="검색해주세요">
	
			&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="col align-self-end" >
			<input type="button" onclick="kakaopost()" value="우편번호 검색" class="btn btn-primary"><br></div>
			</div>
			<br/>  
				
			<div class="input-group mb-3">
			<span class="input-group-text">주소</span>
			<input type="text" id="addr1" placeholder="우편번호 검색시 자동으로 입력됩니다" readonly="readonly" class="form-control" name="u_addr">
			</div>
				  
			<div class="input-group mb-3">
			<input type="text" placeholder="상세주소" class="form-control">
			</div><br/>
				
			<div class="input-group mb-3">
			<span class="input-group-text">키</span>
			<input type="text" class="form-control" placeholder="ex)199.9" name = "d_height">
	
			<span class="input-group-text">몸무게</span>
			<input type="text" class="form-control" placeholder="ex)99.9" name = "d_weight">			    
			</div><br/>
				    
				  			    
			<!-- 약관  -->	  			    
			<div class="accordion" id="accordionExample">
	  		<div class="accordion-item" >
	    	<h2 class="accordion-header" id="headingOne">
	      	<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			<div class="form-check form-switch">
	        
	        <input class="form-check-input" type="checkbox" id="checkAll">
	        
	        <strong>모든 약관 사항에 전체 동의합니다.</strong>
	   	   	</div><br/></button></h2>
	       	
		    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
	      	<div class="accordion-body">	
			
			<div class="form-check">
	        <input class="form-check-input" type="checkbox" value="terms1">
			<small>서비스 이용약관 동의 (필수)</small>
			<a href="/user/service" target="_blank"><span class="badge bg-light" style="float:right;" >자세히</span></a>
			</div>
			
			<div class="form-check">		
	        <input class="form-check-input" type="checkbox" value="terms2">
			<small>개인정보 수집 및 이용 동의 (필수)</small>
			<a href="/user/privacy" target="_blank"><span class="badge bg-light" style="float:right;" >자세히</span></a>
			</div>
			
	
	      	</div></div></div></div><br/>
	      	
	
			<div class="button" style="float:right;" >
			<input type="reset" class="btn btn-dark" value="취소">
			<input type = "submit" id="send"  class="btn btn-primary" value = "회원가입">
			</div>		
		
		</form>
			
</div>	
</div>
</div>


<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp"/>

<script type="text/javascript">

$("#checkId").click(function(){
	$("#send").attr("type", "button");
	const u_id = $("#u_id").val();
	
	$.ajax({
		
		type:"get",
		async:false,
		url:"${root}user/idCheck",
		data:{u_id: u_id},
		success:function(data){
			if(data==1){
				$("#msg").text("이미 사용중인 ID 입니다.");
				$("#msg").css("color","red");
			}else {
				$("#msg").text("사용 가능한 ID 입니다.");
				$("#msg").css("color", "blue");
				$("#send").attr("type", "submit");
				
				if(u_id == ''){
					$("#msg").text("아이디를 입력해주세요.");
					$("#msg").css("color","red");
				}
			}
		}
		
	});
});

$(function(){
	$("#send").attr("type", "button");
	$("#u_pw2").blur(function(){
		if($("#u_pw1").val() != $("#u_pw2").val()){
			if($("#u_pw2").val() != ''){
				$("#pwChk").text("비밀번호가 일치하지 않습니다.");
				$("#pwChk").css("color","red");
				$("#u_pw2").val('');
				$("#u_pw2").focus();
			}
		}else {
			$("#pwChk").text("비밀번호가 일치합니다.");
			$("#pwChk").css("color", "blue");
			$("#send").attr("type", "submit");
		}
	})
	
})


</script>
</body>
</html>
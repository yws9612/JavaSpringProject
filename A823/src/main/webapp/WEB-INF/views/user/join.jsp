<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">

  <!-- 부트스트랩 js 추가 for 아코디언  -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

  
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
<div class="container-fluid">
<div class="row">
<div class="col-md-5">
<br/><br/>
		
		<form action="#중복확인" method="post" id="frm">
		<div class="input-group mb-3">

		<span class="input-group-text">아이디</span>
		<input type="text" class="form-control" readonly="readonly" placeholder="중복확인해주세요">
		&nbsp;&nbsp;&nbsp;&nbsp;
		
		<div class="col align-self-end" >
		<button  type="button" class="btn btn-primary" >중복확인</button></div>
		</div><br/>
		</form>

		
		<div class="input-group mb-3">
		<span class="input-group-text">이름</span>
		<input type="text" class="form-control">
		</div><br/>
			  
		<div class="input-group mb-3">
		<span class="input-group-text">비밀번호</span>
		<input type="password" class="form-control" placeholder="6자리 이상">
		<input type="password" class="form-control" placeholder="비밀번호 확인">
		</div><br/>
			  
		<form action="#중복확인" method="post" id="frm">
		<div class="input-group mb-3">
		<span class="input-group-text">E-MAIL</span>
		<input type="email" class="form-control" readonly="readonly" placeholder="중복확인해주세요">

		&nbsp;&nbsp;&nbsp;&nbsp;		
		<div class="col align-self-end" >
		<button  type="button" class="btn btn-primary">중복확인</button></div>
		</div><br/>
		</form>
			    
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
		<input type="text" id="addr1" placeholder="우편번호 검색시 자동으로 입력됩니다" readonly="readonly" class="form-control">
		</div>
			  
		<div class="input-group mb-3">
		<input type="text" placeholder="상세주소" class="form-control">
		</div><br/>
			
		<div class="input-group mb-3">
		<span class="input-group-text">키</span>
		<input type="text" class="form-control" placeholder="ex)199.9">

		<span class="input-group-text">몸무게</span>
		<input type="text" class="form-control" placeholder="ex)99.9">			    
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
		<a href="/user/service"><span class="badge bg-light" style="float:right;" >자세히</span></a>
		</div>
		
		<div class="form-check">		
        <input class="form-check-input" type="checkbox" value="terms2">
		<small>개인정보 수집 및 이용 동의 (필수)</small>
		<a href="/user/privacy"><span class="badge bg-light" style="float:right;" >자세히</span></a>
		</div>
		

      	</div></div></div><br/>
      	

		<div class="button" style="float:right;" >
		<input type="reset" class="btn btn-dark" value="취소">
		<button id="send"  class="btn btn-primary">회원가입</button>
		</div>		
			
</div>	
</div>
</div>
</div>


</body>
</html>
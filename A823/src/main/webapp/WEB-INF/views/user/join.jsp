<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
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
  
  
</head>

<body>
<div class="container-fluid">
<div class="row">
<div class="col-md-5">
<br/><br/>
		
		<form action="#중복확인" method="post" id="frm">
		<div class="input-group mb-3">
		<div class="input-group-prepend">
		<span class="input-group-text">아이디</span></div>
		<input type="text" class="form-control" readonly="readonly" placeholder="중복확인해주세요">
		
		<div class="col align-self-end" >
		<button  type="button" class="btn btn-primary" >중복확인</button></div>
		</div><br/>
		</form>

		
		<div class="input-group mb-3">
		<div class="input-group-prepend">
		<span class="input-group-text">이름</span></div>
		<input type="text" class="form-control">
		</div><br/>
			  
		<div class="input-group mb-3">
		<div class="input-group-prepend">			  
		<span class="input-group-text">비밀번호</span></div>
		<input type="password" class="form-control" placeholder="6자리 이상">
		<input type="password" class="form-control" placeholder="비밀번호 확인">
		</div><br/>
			  
		<form action="#중복확인" method="post" id="frm">
		<div class="input-group mb-3">
		<div class="input-group-prepend">
		<span class="input-group-text">E-MAIL</span></div>
		<input type="email" class="form-control" readonly="readonly" placeholder="중복확인해주세요">
		
		<div class="col align-self-end" >
		<button  type="button" class="btn btn-primary">중복확인</button></div>
		</div><br/>
		</form>
			    
		<div class="input-group mb-3">
		<div class="input-group-prepend">
		<span class="input-group-text">우편번호</span></div>
		<input type="text" id="zipcode" readonly="readonly" class="form-control" placeholder="검색해주세요">

		<div class="col align-self-end" >
		<input type="button" onclick="kakaopost()" value="우편번호 검색" class="btn btn-primary"><br></div>
		</div>
		<br/>  
			
		<div class="input-group mb-3">
		<div class="input-group-prepend">
		<span class="input-group-text">주소</span></div>
		<input type="text" id="addr1" placeholder="우편번호 검색시 자동으로 입력됩니다" readonly="readonly" class="form-control"><br>
		</div>
			  
		<div class="input-group mb-3">
		<input type="text" placeholder="상세주소" class="form-control">
		</div><br/>
			
		<div class="input-group mb-3">
		<div class="input-group-prepend">
		<span class="input-group-text">키</span></div>
		<input type="text" class="form-control" placeholder="ex)174.2">

		<div class="input-group-prepend">   
		<span class="input-group-text">몸무게</span></div>
		<input type="text" class="form-control" placeholder="ex)68.5">			    
		</div><br/>
			    
			  			    
		<div class="button">
		<input type="reset" class="btn btn-gray" value="취소">
		<button id="send"  class="btn btn-primary">회원가입</button>
		</div>
</div>
</div>
</div>

</body>

</html>
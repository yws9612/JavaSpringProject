
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

</head>

<body>

<div class="container-fluid">
<div class="row ">
<div class="col-md-5">
<br/><br/>


		<div class="input-group mb-3">
		<span class="input-group-text">비밀번호 변경</span>
		<input type="password" class="form-control" placeholder="6자리 이상"/>
		<input type="password" class="form-control" placeholder="비밀번호 확인"/>
		</div><br/>
			  
		<form action="#중복확인" method="post" >
		<div class="input-group mb-3">
		<span class="input-group-text">E-MAIL</span>
		<input type="email" class="form-control"/>

		&nbsp;&nbsp;&nbsp;&nbsp;		
		<div class="col align-self-end" >
		<button type="button" class="btn btn-primary">중복확인</button></div>
		</div><br/>
		</form>
			    
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
		<input type="text" placeholder="우편번호 검색시 자동으로 입력됩니다" readonly="readonly" class="form-control" />
		</div>
			  
		<div class="input-group mb-3">
		<input type="text" placeholder="상세주소" class="form-control"/>
		</div><br/>
			

		<div class="button" style="float:right;" >
		<button class="btn btn-primary">저장하기</button>
		</div>	



</div></div></div><br/>	

</body>

</html>
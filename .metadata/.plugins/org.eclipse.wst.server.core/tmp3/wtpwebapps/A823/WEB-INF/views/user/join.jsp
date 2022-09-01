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
		<input type="text" class="form-control" placeholder="ex)174.2">

		<span class="input-group-text">몸무게</span>
		<input type="text" class="form-control" placeholder="ex)68.5">			    
		</div><br/>
			    
			  			    
		<!-- 약관  -->	  			    
		<div class="accordion" id="accordionExample">
 
  		<div class="accordion-item">
    	<h2 class="accordion-header" id="headingOne">
      	<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
         	약관이름 1</button></h2>
	    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
      	<div class="accordion-body">
      	
      	
      	<fieldset class="form-group">
		<div class="form-check form-switch">
        <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked="">
        <label class="form-check-label" for="flexSwitchCheckChecked"><strong>회원가입을 위한 약관에 동의합니다</strong></label>
   	   	</div></fieldset>
     	 
     	 어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용어쩌고저쩌고블라블라이러쿵저러쿵내용내용
      	</div></div></div>
      	
 		<div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Accordion Item #2
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Accordion Item #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>
<br/><br/>

		
		<div class="button">
		<input type="reset" class="btn btn-dark" value="취소">
		<button id="send"  class="btn btn-primary">회원가입</button>
		</div>		
		
		
	
</div>
</div>
</div>

</body>

</html>
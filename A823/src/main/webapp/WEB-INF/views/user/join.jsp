<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
<div class="container-fluid">
<div class="row">
<div class="col-md-5">
		
		<form action="#중복확인" method="post" id="frm">
		<br/><br/>
			<div class="input-group mb-3">
			    <div class="input-group-prepend">
			      <span class="input-group-text">아이디</span>
			    </div>
			      <input type="text" class="form-control" readonly="readonly" size=20>
			    <div class="col align-self-end" >
			          <button  type="button" class="btn btn-primary">중복확인</button>
			   	</div>
			 </div>
			  <br/>
		</form>
		
			  <div class="input-group mb-3">
			    <div class="input-group-prepend">
			      <span class="input-group-text">이름</span>
			    </div>
			      <input type="text" class="form-control">
			  </div>
			  <br/>
			  
			  <div class="input-group mb-3">
			    <div class="input-group-prepend">
			      <span class="input-group-text">비밀번호</span>
			    </div>
			    <input type="password" class="form-control" placeholder="6자리 이상">
			    <input type="password" class="form-control" placeholder="비밀번호 확인">
			  </div>
			  <br/>
			  
			  <div class="input-group mb-3">
			    <div class="input-group-prepend">
			      <span class="input-group-text">이메일</span>
			    </div>
			      <input type="text" class="form-control" placeholder="email@email.com">
			  </div>
			  <br/>
			    
			  <div class="input-group mb-3">
			    <div class="input-group-prepend">
			      <span class="input-group-text">우편번호</span>
			    </div>
			      <input type="text" readonly="readonly" class="form-control">
			    <div class="col align-self-end" >
			      <input type="button" onclick="#우편번호찾기" value="우편번호" class="btn btn-primary"><br>
			   	</div>
			  </div>
			  <br/>  
			
			  <div class="input-group mb-3">
			    <div class="input-group-prepend">
			      <span class="input-group-text">주소</span>
			    </div>
			    <input type="text" placeholder="우편번호 검색시 자동으로 입력됩니다" readonly="readonly" class="form-control"><br>
			  </div>
			
			  <div class="input-group mb-3">
				<input type="text" id="sample6_detailAddress" name="sample6_detailAddress" placeholder="상세주소" class="form-control">
			  </div>
			    
			  <div class="button">
			 	  <input type="reset" class="btn btn-gray" value="취소">
			 	  <button  id="send"  class="btn btn-primary">회원가입</button>
			  </div>
	  </div>
	</form>
	</div>
</div>

</body>

</html>
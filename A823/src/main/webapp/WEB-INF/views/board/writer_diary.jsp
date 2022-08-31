<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="witdth=divice-width, initial-scale=1.0">
<title></title>
<title>게시판 글쓰기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>

</head>
<body>

<div class="container">

  <p><h2>게시판 글쓰기</h2>
  <form action="write.jsp" method="post">
    <div class="form-group"></p>
      <label for="title">제목</label>

      <input type="text" class="form-control" id="title"
       placeholder="제목 입력" name="title"
       maxlength="100" required="required"
       pattern=".{4,100}">
    </div>
                        		
	    <div class="form-group">
   			<label for="content">내용</label>
                         		
		<textarea class="form-control" rows="5" id="content"
  		  name="content" placeholder="내용 작성"></textarea>
  		  <input type="text" class="form-control" placeholder="오늘의 한 줄평  10글자 내외" maxlength="10">    
		 </div>
 		
   		 <p><div class="form-group">
  		    <label for="writer">작성자</label>
   		  	 <input type="text" class="form-control" id="writer"
   		  	  placeholder="작성자" name="writer">
  		 </div></p>
  		 
 	   		<div class="form-group">
    		 <label for="exampleInputPassword1">암호</label>
    		  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="암호  4자리 입력해주세요"  maxlength="4">	
  			</div>	 	   
 		 
 		   <button type="submit" class="btn btn-default">등록</button>
   			<button type="submit" class="btn btn-default">저장</button>
 		 </form>
		</div>
		</body>
		</html>
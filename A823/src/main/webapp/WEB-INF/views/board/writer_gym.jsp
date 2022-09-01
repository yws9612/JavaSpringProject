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
                 
 	     <div class="search row">
          <div class="col-xs-2 col-sm-2">
            <select name="searchType" class="form-control">
              
              <option value="a">상체</option>
              <option value="b">어깨</option>
              <option value="c">팔</option>
              <option value="d">등</option>
              <option value="e">복근</option>
              <option value="f">없음</option>
                            
            </select>
          </div>
 		
 	     <div class="search row">
          <div class="col-xs-2 col-sm-2">
            <select name="searchType" class="form-control">
              
              <option value="a">하체</option>
              <option value="b">엉덩이</option>
              <option value="c">허벅지</option>
              <option value="d">종아리</option>
              <option value="e">없음</option>
              
            </select>
          </div>
       		
		<textarea class="form-control" rows="5" id="content"
  		  name="content" placeholder="내용 작성"></textarea>
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
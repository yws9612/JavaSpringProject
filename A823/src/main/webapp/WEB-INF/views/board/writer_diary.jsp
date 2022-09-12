<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="witdth=divice-width, initial-scale=1.0">
<title>게시판 글쓰기</title>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"/>		
    
<div class="container" style="margin-top:120px">

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
        
		 <div id="summernote"></div>
 		
   		 <p><div class="form-group">
  		    <label for="writer">작성자</label>
   		  	 <input type="hidden" value="${sessionScope.u_id}" class="form-control" id="writer"
   		  	  placeholder="작성자" name="writer">
  		 </div></p>
		
		<div class="form-check form-switch">
 		<input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault">
		<label class="form-check-label" for="flexSwitchCheckDefault">비공개</label>
		</div>
	
		<div>
 		   
 		   <button class="btn btn-default" type="submit">등록</button>
   		   <button class="btn btn-default" type="submit">목록</button>
   			
 		</div>
 		
 		 </form>
		</div>

   		<script>
    		$('#summernote').summernote({
   		    placeholder: 'Hello Bootstrap 5',
        	tabsize: 2,
        	height: 100
      		});  
    	</script>	
    <c:import url="/WEB-INF/views/includes/footer.jsp"/>	
		</body>
		</html>
list2.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="witdth=divice-width, initial-scale=1.0">
<title></title>

<body>	
<article>		
	<div class="container" role="main">			
	<h2>게시판 글쓰기</h2>					
					
	<p><label for="title">제목</label>					
	<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">											

	<form>
      <select Upper body>
        <option>상체</option>
        <option>어깨</option>
        <option>팔</option>
        <option>복근</option>
        <option>등</option> 
    </select>
    
    <form>
      <select lower body>
        <option>하체</option>
        <option>엉덩이</option>
        <option>허벅지</option>
   	    <option>종아리</option>    
      </select>
    </form>
	</div></p>
									
	<div class="mb-3">					
	<label for="content">내용</label>					
	<textarea class="form-control" rows="9"  name="content" id="content" placeholder="내용을 입력해 주세요" >
	</textarea>				
	</div>								
    					
	</form>			
	<div >				

	<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>				
	<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>			
	</div>		
	</div>	
	</article>


</html>
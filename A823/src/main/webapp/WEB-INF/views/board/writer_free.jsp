<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=divice-width, initial-scale=1.0">
<title>부들부들 | 게시판 글쓰기</title>
	<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/lang/summernote-ko-KR.js"></script>
    
    <style type="text/css">
    	.dropdown-toggle:after {
    		display:none !important;
    	}
    </style>
<body>


<!-- HEADER -->
<c:import url="/WEB-INF/views/includes/header.jsp"/>


<c:if test="${not empty sessionScope.user.u_id }">
    
    
    
<div class="container" style="margin-top:120px; margin-bottom:120px">


  <h2>게시판 글쓰기</h2>  
  <br>
   <form action="${root}new_board" method="post">
  
    <div class="form-group">
    	<div class="input-group mb-3">
		<select class="form-select" id="inputGroupSelect01" name="b_div" style="width:10%;">
			<option value="꿀팁">꿀팁</option>
			<option value="루틴">루틴</option>
			<option value="방법">방법</option>
		</select>

		<input type="text" class="form-control" aria-label="Text input with dropdown button" id="title"
			placeholder="제목 입력" name="b_title"
			maxlength="100" required="required"
			pattern=".{4,100}" style="width:90%;">
		</div>

		<label for="content">내용</label>        
		<textarea id="summernote" name="b_con" required="required"></textarea>
 		
 		
		<!-- <label for="writer">작성자</label>-->
		<input type="hidden" value="${sessionScope.user.u_id}" 
				id="writer" name="b_writer">
		<!-- 임시 b_eno -->
		<input type="hidden" value="" name="b_eno">

		
		<!-- 운동게시판은 비공여부 없음
		<div class="form-check form-switch">
			<input class="form-check-input" name="b_open" type="checkbox" id="flexSwitchCheckDefault">
			<label class="form-check-label" for="flexSwitchCheckDefault">비공개</label>
		</div>
		 -->
		
		<br>
		<div>   
			<button class="btn btn-primary btn-sm text-end" type="submit">등록</button>
			<button class="btn btn-primary btn-sm text-end" onclick="location.href='/board/exercise_free'">목록</button>
		</div> 		
		
				

	</div>
	
				
  </form>
	
	
</div>

</c:if>


   		<script>
			$(document).ready(function() {
   				var fontList = ['맑은 고딕','굴림','돋움','바탕','궁서','Arial','Courier New','Verdana','Tahoma'];

   				$('#summernote').summernote({
    				lang: 'ko-KR',
    		        tabsize: 2,
					height: 300,
					minHeight: 300,
					maxHeight: 300, 
					
					fontNames: fontList,
	                addDefaultFonts: false,
					toolbar: [
					    ['font', ['fontname','fontsize']],
					    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
					    ['color', ['color']],
					    ['height', ['height']],
					    ['table', ['table']],
					    ['para', ['ul', 'ol', 'paragraph']],
					    ['insert',['link']],
					    ['view', ['fullscreen', 'codeview', 'help']]
					],

					tabDisable: true
      			})
      			
      			$("#summernote").on("summernote.enter", function(we, e) {
      			     $(this).summernote("pasteHTML", "<br>&VeryThinSpace;");
      			     e.preventDefault();
      			});
    		});
    	</script>	
    	
    	
    <c:import url="/WEB-INF/views/includes/footer.jsp"/>
    
    	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">수정/삭제</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">수정/삭제</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form>
				<input type="hidden" name="pageNum" value='${ba.pageNum }'>
				<input type="hidden" name="amount" value='${ba.amount }'>
					<div class="form-group">
						<label>글번호</label> <input class="form-control" name="bnum"
							readonly="readonly" value='<c:out value="${board.bnum}"/>'>
					</div>

					<div class="form-group">
						<label>제목</label> <input class="form-control" name="title" value='<c:out value="${board.title}"/>'>
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="5" cols="50" name="content"><c:out
								value="${board.content}" /></textarea>
					</div>

					<div class="form-group">
						<label>글쓴이</label> <input class="form-control" name="writer"
							value='<c:out value="${board.writer}"/>' readonly="readonly">
					</div>
					<button class="btn btn-default" data-oper='modify'>수정</button>
					<button class="btn btn-danger" data-oper='del'>삭제</button>
					<button class="btn btn-info" data-oper='list'>리스트</button>
				</form>
			</div>

			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>


<script type="text/javascript">
$(document).ready(function() {
 
  var fo = $("form");
 
  $('button').on("click", function(e){
    
    e.preventDefault(); 
    
    var op = $(this).data("oper");
   
    
   if(op === 'list'){      
      self.location= "/board/list";
      return;
    }
   else if(op==='del'){
	   fo.attr("action", "/board/del").attr("method","post");
	   fo.submit();
	
   }
   else if(op==='modify'){
	   fo.attr("action", "/board/modify").attr("method","post");
	   fo.submit();
   }

    
  });  
});
</script>




<%@include file="../includes/footer.jsp"%>
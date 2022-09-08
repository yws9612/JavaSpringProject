<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">조회</div>
			<!-- /.panel-heading -->
			<div class="panel-body">

				<div class="form-group">
					<label>글번호</label> <input class="form-control" name="bnum"
						readonly="readonly" value='<c:out value="${}"/>'>
				</div>

				<div class="form-group">
					<label>제목</label> <input class="form-control" name="title"
						readonly="readonly" value='<c:out value="${}"/>'>
				</div>

				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" rows="5" cols="50" name="content"><c:out
							value="${}" /></textarea>
				</div>

				<div class="form-group">
					<label>글쓴이</label> <input class="form-control" name="writer"
						value='<c:out value="${}"/>' readonly="readonly">
				</div>


				<form id='act' action="/board/list" method='get'>
					<input type='hidden' name='pageNum' value='${}'>
					<input type='hidden' name='amount' value='${}'>
					<input type='hidden' name='bnum' value='${}'>
					<input type='hidden' name='type' value='${}'>
					<input type='hidden' name='keyword' value='${}'>
				</form>

				<button type="button" class="btn btn-default list">
					<a href='/board/list'>List</a>
				</button>
				<button type="button" class="btn btn-default mod">
					<a href='/board/modify?bnum=<c:out value="${}"/>'></a>
				</button>

				<script>
                       			
     var act = $("#act");
                       		
     $(".list").click(function(e){
        e.preventDefault();
        act.find("input[name='bnum']").remove();
        act.submit();
        })
                       		
      $(".mod").click(function(e){
         e.preventDefault();
         act.attr("action","/board/modify");
         act.submit();
        })
                       		
                       		
    </script>

			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>


<!-- /.row -->
<%@include file="../includes/footer.jsp"%>
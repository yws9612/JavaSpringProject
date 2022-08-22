<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Tables</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">게시판 등록</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="/board/submit" method="post">
					<div class="form-group">
						<label>제목</label> <input class="form-control" name="title">
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea rows="5" cols="30" name="content" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<label>글쓴이</label>
						<input class="form-control" name="writer">
					</div>
					<button type="submit" class="btn btn-default">Submit Button</button>
                    <button type="reset" class="btn btn-default">Reset Button</button>

				</form>
				</div>
				</div>
				</div>
				</div>
				
	<%@include file="../includes/footer.jsp"%>			
				
				
				
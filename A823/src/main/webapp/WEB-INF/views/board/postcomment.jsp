<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">

</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp" />

	<c:choose>

		<c:when test="cmt.b_writer eq sessionScope.user.u_id">
			<button onclick="">수정</button>
			<button onclick="">삭제</button>
		</c:when>
		<c:when test="sessionScope.user.u_admin eq Y">
			<button onclick="">delete</button>
		</c:when>

	</c:choose>


	<table class="table table-hover">
		<div class="container">

			<tr>
				<td>번호</td>
				<td>${reply_view.c_no}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${reply_view.b_vc}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><p class="text-muted" name="b_writer"
						value="${reply_view.b_writer}"></p></td>
			</tr>
			<tr>
				<td>내용</td>
				<div class="form-group">
					<label for="exampleTextarea" class="form-label mt-4">게시글</label>
					<td><p class="text-muted" name="b_con">${reply_view.b_con}</p></td>
				</div>
			<tr>

			</tr>
		</div>
		</div>

		</Form>
	</table>

	<div>
		<div>
			<!-- 댓글 표시 -->
			<c:forEach items="comment" var="cmt">
				<div>
					<c:choose>
						<c:when test="${cmt.c_step}==1">
							<c:out value="" />
							<c:out value="" />
						</c:when>
						<c:otherwise>
							<span>ㄴ</span>
							<c:out value="" />
							<c:out value="" />
						</c:otherwise>
					</c:choose>


					<c:choose>
						<c:when test="${cmt.c_writer } eq ${sessionScope.user.u_id }">
							<button onclick="">modify</button>
							<button onclick="">delete</button>
						</c:when>
						<c:when test="${sessionScope.user.u_admin } eq Y">
							<button onclick="">delete</button>
						</c:when>
					</c:choose>


					<button type="button" class="btn btn-outline-info">대댓글</button>
					<div id="recommentform" style="display: none">
						<form action="recomment">
							<textarea name="c_con" rows="" cols=""></textarea>
							<input type="hidden" name="c_writer" value=""> <input
								type="hidden" name="c_level" value="">
							<button type="submit">submit</button>
						</form>
					</div>
				</div>
			</c:forEach>
		</div>

		<p>
		<div>
			<!-- 댓글 form -->
			<form action="newcomment">
				<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="댓글을 등록해주세요"
						aria-label="댓글을 등록해주세요" aria-describedby="button-addon2">
					<button class="btn btn-primary" type="submit" id="button-addon2">등록</button>
				</div>
				<input type="hidden" name="c_writer" value=""> <input
					type="hidden" name="c_level" value="">
			</form>
		</div>
		</p>


		<c:import url="/WEB-INF/views/includes/footer.jsp" />


		<script>
			$(document).on("click", "#recomment", function() {
				$(this).next([ '#recommentform' ]).show();
			})
		</script>
</body>
</html>

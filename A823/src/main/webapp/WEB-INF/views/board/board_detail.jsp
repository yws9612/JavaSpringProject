<%@page import="co.sol.main.BVO"%>
<%@page import="co.sol.main.CVO"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>부들부들 | 게시글 상세보기</title>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
	
<style type="text/css">
ul {
	list-style: none
}
#check-btn { display: none; }
#check-btn:checked ~ .menubars { display: block; } 
.menubars { display: none; }
</style>

</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp" />
	
<div class="container" style="margin-top: 120px;">
<div class="row justify-content-md-center">
<div class="col-md-10 col-md-10 shadow p-3 mb-5 bg-body rounded">
	<c:catch>
	<c:choose>
		<c:when test="${bdetail.b_writer eq sessionScope.user.u_id }">
			<div class="row">
			
			<div class="col text-start">			
				<c:choose>    
					<c:when test="${bdetail.b_div eq '일지'}">
		    			<a href="/board/exercise_diary" class="btn btn-outline-primary btn-sm"><i class="bi bi-list"></i></a>
		    		</c:when>
		    		
		    		<c:otherwise>
		    			<a href="/board/exercise_free" class="btn btn-outline-primary btn-sm"><i class="bi bi-list"></i></a>
		    		</c:otherwise>    	
		    	</c:choose>   	
			</div>
			
			<div class="col text-end">
				<a href="modify?b_no=${bdetail.b_no}" class="btn btn-primary btn-sm text-end">수정</a>
				<a href="delete?b_no=${bdetail.b_no}&b_div=${bdetail.b_div}" class="btn btn-secondary btn-sm text-end">삭제</a>
			</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="row">
			<div class="col text-start">			
				<c:choose>    
					<c:when test="${bdetail.b_div eq '일지'}">
		    			<a href="/board/exercise_diary" class="btn btn-outline-primary btn-sm"><i class="bi bi-list"></i></a>
		    		</c:when>
		    		
		    		<c:otherwise>
		    			<a href="/board/exercise_free" class="btn btn-outline-primary btn-sm"><i class="bi bi-list"></i></a>
		    		</c:otherwise>   	
		    	</c:choose> 
		    	</div>
			</div>
		</c:otherwise>
	</c:choose>
	</c:catch>
		<table class="table">
			<thead>
			<tr>
				<th colspan="4"><span style="">[<c:out value="${bdetail.b_div }"/>] </span><c:out value="${bdetail.b_title}"/></th>
			</tr>
			<tr>
				<td><c:out value="${bdetail.b_writer}"/></td>
				<td><fmt:formatDate value="${bdetail.b_udate}" pattern="yyyy. MM. dd hh:mm:ss"/></td>
				<td>조회수</td>
				<td><c:out value="${bdetail.b_vc}"/></td>
			</tr>
			<tr>
				<td colspan="4">내용</td>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td colspan="4"><c:out value="${bdetail.b_con}" escapeXml="false"/></td>
			</tr>
			</tbody>
	</table><!-- 게시글 상세보기 테이블 끝 -->
	
	
	<span style="font-size:medium;"><i class="bi bi-chat-left-dots"></i> <c:out value="${getList.size() }"/></span>
	<hr class="featurette-divider">

	<!-- 댓글 리스트 불러오기 -->
		<ul>
		<c:forEach var="CVO" items="${getList}">
			<c:choose>
			<c:when test="${CVO.c_step==1 }">
			<li>
			<div class="row">
				<div class="col text-start">
					<span style="font-size:small;"><c:out value="${CVO.c_writer }"/></span>
					<span style="font-size:xx-small;"><fmt:formatDate value="${CVO.c_udate}" pattern="yyyy. MM. dd hh:mm:ss"/></span>
					<br>
					<span style="font-size:small;"><c:out value="${CVO.c_con }"/></span>
				</div>
				
				<div class="col text-end">
				<c:if test="${CVO.c_writer eq sessionScope.user.u_id }">
					<a href="#" role="button" class="text-decoration-none" style="font-size:small;" id="">수정</a>
					<a href="#" role="button" class="text-decoration-none" style="font-size:small;" id="">삭제 </a>
				</c:if>
				<c:if test="${CVO.c_writer != sessionScope.user.u_id }">
					<a href="#" role="button" class="text-decoration-none" style="font-size:small;" id="">답글 </a>
				</c:if>
				</div>
			</div>
			</li>
			</c:when>
			<c:when test="${CVO.c_step==2 }">
			<li>
			<div class="row">
				<div class="col text-start">
					<p class="">
						<i class="bi bi-arrow-return-right"></i>
						<span class="" style="font-size:small;"><c:out value="${CVO.c_writer }"/></span>
						<span class="" style="font-size:xx-small;"><fmt:formatDate value="${CVO.c_udate}" pattern="yyyy. MM. dd hh:mm:ss"/></span>
						<br>&nbsp;&nbsp;&nbsp;&nbsp;
						<span id="CVOcon" class="" style="font-size:small;"><c:out value="${CVO.c_con }"/></span>
					</p>
				</div>
				<c:if test="${CVO.c_writer eq sessionScope.user.u_id }">
				<div class="col text-end">
					<a href="#" role="button" class="text-decoration-none" style="font-size:small;" id="">수정</a>
					<a href="#" role="button" class="text-decoration-none" style="font-size:small;" id="">삭제 </a>
				</div>
				</c:if>
			</div>
			</li>
			</c:when>			
			</c:choose>
		</c:forEach>
		<c:if test="${empty getList }">
			<li>
				<div class="row">
					<div class="col text-start">
						<span class="" style="font-size:medium;">아직 등록된 댓글이 없습니다.<br>첫 댓글을 남겨주세요.</span>
					</div>
				</div>
			</li> 	
		</c:if>
		</ul>
		
		
		
	<hr class="featurette-divider">
		<!-- 댓글 form -->
		<c:if test="${empty sessionScope.user.u_id }">
			<div class="input-group" id="comments">
				<textarea readonly="readonly" class="form-control" aria-describedby="button-addon2" placeholder="로그인 후 이용가능합니다."></textarea>
				<button class="btn btn-primary btn-sm" type="submit" id="button-addon2 recomment" disabled>등록</button>
			</div>
		</c:if>
		<c:if test="${not empty sessionScope.user.u_id }">
		<form:form action="c_insert" modelAttribute="CVO" method = "post">
			<span class="" style="font-size:small;">${sessionScope.user.u_id }</span>
			<div class="input-group" id="commentinsert">
				<form:textarea path="c_con" class="form-control" aria-describedby="button-addon2" placeholder="댓글을 입력해주세요."></form:textarea>
				<form:hidden path="c_level" value=""/>
				<form:hidden path="b_no" value="${bdetail.b_no }"/>
				<form:hidden path="c_writer" value="${sessionScope.user.u_id }"/>
				<form:button class="btn btn-primary btn-sm" id="button-addon2 recomment" onclick="">등록</form:button>
			</div>
		</form:form>
		</c:if>

</div>
</div>
</div>

<!-- FOOTER -->	
<c:import url="/WEB-INF/views/includes/footer.jsp" />

<script type="text/javascript">
$("#comments textarea").on("click", function(){
	//로그인 여부 체크
	var isLogin=${not empty sessionScope.user.u_id};
	if(isLogin==false){
		var isMove=confirm("로그인 페이지로 이동하시겠습니까?");
		if(isMove){
			location.href="${pageContext.request.contextPath }/user/login";
		}
	}
});


</script>

</body>
</html>

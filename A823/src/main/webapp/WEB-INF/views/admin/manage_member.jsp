<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부들부들 | 회원관리</title>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	

	<link
		href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css"
		rel="stylesheet" />
	<script
		src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"
		crossorigin="anonymous"></script>
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"
		rel="stylesheet" />


</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp" />
	
	
	<c:if test="${sessionScope.user.u_id eq 'admin' }">

	
		<div class="container" style="margin-top: 120px">
			<table id="t1" class="table table-hover text-center table-bordered">
				 
				<thead class="table-primary text-center">
					<tr>
						<th style="width:12.5%; text-align:center;">회원번호</th>
						<th style="width:12.5%; text-align:center;">이름</th>
						<th style="width:12.5%; text-align:center;">ID</th>
						<th style="width:12.5%; text-align:center;">PW</th>
						<th style="width:12.5%; text-align:center;">E-mail</th>
						<th style="width:12.5%; text-align:center;">가입일</th>
						<th style="width:12.5%; text-align:center;">누적 신고 횟수</th>
						<th style="width:12.5%; text-align:center;"></th>	
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${UList }" var="uvo">
						<!--<c:if test="${uvo.u_admin eq 'N'} ">-->				
						<!--</c:if>-->
							<tr>
								<td><c:out value="${uvo.u_no }"/></td>
								<td><c:out value="${uvo.u_name }"/></td>
								<td><c:out value="${uvo.u_id }"/></td>							
								<td><c:out value="${uvo.u_pw }"/></td>
								<td><c:out value="${uvo.u_email }"/></td>
								<td><c:out value="${uvo.u_joindate }"/></td>
								<td><c:out value="${uvo.u_reported }"/></td>
								<td><a href="#"class="btn btn-secondary btn-sm text-end">강제 탈퇴</a></td>				
							</tr>		
					</c:forEach>
				</tbody>
			</table>
		</div>
	
	
	</c:if>
	
	
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
	
	
	
	
	<script type="text/javascript">
		$(document).ready(function () {
		    $('#t1').DataTable({
		    	lengthMenu: [ 10, 15, 20, 25, 30 ],
		    	displayLength: 10,
		    	filter : false,
		    	"language": {
		            "emptyTable": "데이터가 없어요.",
		            "lengthMenu": "페이지당 _MENU_ 개씩 보기",
		            "info": "현재 _START_ - _END_ / 총 _TOTAL_건",
		            "infoEmpty": "데이터 없음",
		            "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
		            "search": "검색: ",
		            "zeroRecords": "일치하는 데이터가 없어요.",
		            "loadingRecords": "로딩중...",
		            "processing":     "잠시만 기다려 주세요...",
		            "paginate": {
		                "next": "다음",
		                "previous": "이전"
		            }
		        }
	
	    	});
		});
	
	</script>
	

</body>
</html>
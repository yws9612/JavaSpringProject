<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">회원번호</th>
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">이름</th>
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">ID</th>
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">PW</th>
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">E-mail</th>
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">가입일</th>
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">누적 신고 횟수</th>
						<th style="width:12.5%; text-align:center;"></th>	
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${UList}" var="uvo">
							<tr>
								<td style="vertical-align: middle; word-break:keep-all"><c:out value="${uvo.u_no }"/></td>
								<td style="vertical-align: middle; word-break:keep-all"><c:out value="${uvo.u_name }"/></td>
								<td style="vertical-align: middle; word-break:keep-all"><c:out value="${uvo.u_id }"/></td>							
								<td style="vertical-align: middle; word-break:keep-all"><c:out value="${uvo.u_pw }"/></td>
								<td style="vertical-align: middle; word-break:keep-all"><c:out value="${uvo.u_email }"/></td>
								<td style="vertical-align: middle; word-break:keep-all">
									<fmt:formatDate value="${uvo.u_joindate }" pattern="yyyy. MM. dd"/>
								</td>
								<td style="vertical-align: middle; word-break:keep-all"><c:out value="${uvo.u_reported }"/></td>
								<td style="vertical-align: middle;">
									<c:choose>
										<c:when test="${uvo.u_admin eq 'N'}">
											<a href="" onclick="report_list(${uvo.u_no })" class="btn btn-secondary btn-sm text-end">신고 내역 확인</a>
										</c:when>
										<c:otherwise>
											관리자 계정
										</c:otherwise>	
									</c:choose>
								</td>				
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
		
		function report_list(u_no){
			var url='/admin/report_list?u_no='+u_no;
			var name='신고 내역 확인';
			var pop_x=(window.screen.width - 1000) / 2;
			var pop_y=(window.screen.height - 500)  / 2;
			var option='width=1000, height=500, left='+pop_x+', top='+pop_y;
			window.open(url, name, option);
		}
	
	</script>
	

</body>
</html>
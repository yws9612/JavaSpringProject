<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>부들부들 | 운동일지</title>
<link
	href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.5.1.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"
	crossorigin="anonymous"></script>

</head>

<body>
<!-- HEADER -->
<c:import url="/WEB-INF/views/includes/header.jsp" />
	<div class="container" style="margin-top: 120px; margin-bottom:40px;">
		<h2>부들부들 운동일지</h2>
		<hr>
			<div>
				<table id="t1" class="table table-hover text-center table-bordered">
					<thead class="table-primary text-center">
						<tr>
							<th style="width:10%; text-align:center;">번호</th>
							<th style="width:60%; text-align: center;">글제목</th>
							<th style="width:10%; text-align:center;">작성자</th>
							<th style="width:10%; text-align:center;">작성일</th>
							<th style="width:10%; text-align:center;">조회수</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${BListdiary}" var="bvo">
						<tr>
							<td><c:out value="${bvo.b_no }"/></td>
							<td style="text-align: left;"><a href="${root }board/board_detail?b_no=${bvo.b_no }">[<c:out value="${bvo.b_div }"/>] <c:out value="${bvo.b_title }"/></a></td>
							<td><c:out value="${bvo.b_writer }"/></td>
							<td><fmt:formatDate value="${bvo.b_udate}" pattern="yyyy. MM. dd"/></td>
							<td><c:out value="${bvo.b_vc }"/></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<c:if test="${not empty sessionScope.user.u_id }">
					<p>
						<a href="writer_diary" class="btn btn-primary btn-sm text-end">글쓰기</a>				
					</p>
				</c:if>
		</div>
	</div>

<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp" />


<script type="text/javascript">
	
	$(document).ready(function () {
    $('#t1').DataTable({
    	// 표시 건수를 5건 단위로 설정
    	lengthMenu: [ 10, 15, 20, 25, 30 ],

    	// 기본 표시 건수를 5건으로 설정
    	displayLength: 10,
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
        },
        //정렬
        aaSorting: [],
        order : [[ 0, "desc" ]]

    });

    $('#t2').DataTable({
    	// 표시 건수를 5건 단위로 설정
    	lengthMenu: [ 5, 10, 15, 20, 25 ],

    	// 기본 표시 건수를 5건으로 설정
    	displayLength: 5,
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
        },

    });
});
	
</script>

</body>
</html>
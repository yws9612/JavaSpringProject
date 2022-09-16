<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>부들부들 | 운동방법 리스트</title>
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
<body class="sb-nav-fixed">

	<c:import url="/WEB-INF/views/includes/header.jsp" />

	<div class="container" style="margin-top: 120px;">
	<!-- 홈트/짐트 라디오 버튼 -->
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio1" value=1 onclick='test(this.value);' autocomplete="off" checked>
		  <label class="btn btn-outline-primary" for="btnradio1">홈트</label>
		
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio2" value=2 onclick='test(this.value);' autocomplete="off">
		  <label class="btn btn-outline-primary" for="btnradio2">짐트</label>
		</div>
		
		<div id="home" style="margin-top:20px; margin-bottom:40px">
		<table id="t1" class="table table-bordered"
			style="width: 100%;">
			<thead>
				<tr>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${getEList}" var="home">
					<c:if test="${home.e_div eq '홈트'}">
						<tr>
							<td><img class="img-list-src" src="${home.e_thum}"
								width="500" height="190"></td>
							<td>
								<h3><c:out value="${home.e_name}" /></h3>
								<p><c:out value="${home.e_guide}" /></p> 
								<c:if test="${not empty home.e_part}">
									<h4><span class="badge text-bg-info">#<c:out value="${home.e_part}" /></span></h4>
								</c:if> 
								<c:if test="${not empty home.e_cau}">
									<h4><span class="badge text-bg-warning">#<c:out value="${home.e_cau}" /></span></h4>
								</c:if>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		</div>
		
		<div id="gym" style="display: none; margin-top:20px; margin-bottom:40px">
		<table id="t2" class="table table-bordered"
			style="width: 100%;">
			<thead>
				<tr>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${getEList}" var="gym">
					<c:if test="${gym.e_div eq '짐트'}">
						<tr>
							<td style="width:30%;"><img class="img-list-src" src="${gym.e_thum}"
								width="500" height="190"></td>
							<td>
								<h3><c:out value="${gym.e_name}" /></h3>
								<p><c:out value="${gym.e_guide}" /></p> 
								<c:if test="${not empty gym.e_part}">
									<h4><span class="badge text-bg-info">#<c:out value="${gym.e_part}" /></span></h4>
								</c:if> 
								<c:if test="${not empty gym.e_cau}">
									<h4><span class="badge text-bg-warning">#<c:out value="${gym.e_cau}" /></span></h4>
								</c:if>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp" />


<script type="text/javascript">
	function test(value){
		if(value=='1') {home.style.display = ''; gym.style.display = 'none';}
		else {gym.style.display = ''; home.style.display = 'none';}
	}
	$(document).ready(function () {
    $('#t1').DataTable({
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

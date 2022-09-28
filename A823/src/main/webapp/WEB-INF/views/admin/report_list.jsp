<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 내역</title>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>	
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

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">


	<script 
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" 
	crossorigin="anonymous"></script>

	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" crossorigin="anonymous">
		
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.5/dist/web/variable/pretendardvariable-jp.css" />

		
	<style>
		@import url("/resources/css/bootstrap.min.css");
    	*{
			font-family: "Pretendard JP", Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Hiragino Sans", "Apple SD Gothic Neo", Meiryo, "Noto Sans JP", "Noto Sans KR", "Malgun Gothic", Osaka, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
     	}
	</style>


</head>
<body>
	
	<c:if test="${sessionScope.user.u_id eq 'admin' }">

	
		<div class="container">
			<table id="t1" class="table table-hover text-center table-bordered" style="table-layout: fixed !important;">
				 
				<thead class="table-primary text-center">
					<tr>
						<th style="width:12.5%; text-align:center; vertical-align: middle; word-break:keep-all;">날짜</th>
						<th style="width:22.5%; text-align:center; vertical-align: middle; word-break:keep-all;">신고 사유</th>
						<th style="width:10%; text-align:center; vertical-align: middle; word-break:keep-all;">분류</th>
						<th style="width:50%; text-align:center; vertical-align: middle; word-break:keep-all;">내용</th>
						<th style="width:10%; text-align:center; vertical-align: middle; word-break:keep-all;"></th>	
					</tr>
				</thead>
				<tbody style="table-layout: inherit;">
					<c:forEach items="${List}" var="lvo">
							<tr style="height:34px;">
								<td style="vertical-align: middle; word-break:keep-all;">
									<fmt:formatDate value="${lvo.l_date }" pattern="yy. MM. dd"/>
								</td>
								<td style="vertical-align: middle; word-break:keep-all;"><c:out value="${lvo.l_report }"/></td>
								
								<c:choose>
									<c:when test="${lvo.c_no ne 0 }">
										<td style="vertical-align: middle; word-break:keep-all;">댓글</td>
										<td style="font-size:0.75em; 
													word-break:normal; 
													text-align:left;
													vertical-align: middle;
													overflow:hidden;
													overflow-y:hidden;
													text-overflow:ellipsis;
													white-space: nowrap;">
											<c:out value="${lvo.c_con }"/>
										</td>
										<td style="vertical-align: middle; word-break:keep-all;">
											<a href="" onclick="gogo('/board/board_detail?b_no=${lvo.b_no }')" class="btn btn-primary btn-sm text-end">바로가기</a>
										</td>
									</c:when>
									
									<c:when test="${lvo.g_no ne 0 }">
										<td style="vertical-align: middle; word-break:keep-all;">리뷰</td>
										<td style="font-size:0.75em; 
													word-break:normal; 
													text-align:left;
													vertical-align: middle;
													overflow:hidden;
													text-overflow:ellipsis;
													white-space: nowrap;">
											<c:out value="${lvo.r_rev }"/>
										</td>
										<td style="vertical-align: middle; word-break:keep-all;">
											<a href="" onclick="gogo('/gym/gym_detail?g_no=${lvo.g_no }')" class="btn btn-primary btn-sm text-end">바로가기</a>
										</td>
									</c:when>
									
									<c:otherwise>
										<td style="vertical-align: middle; word-break:keep-all;">게시글</td>
										<td style="font-size:0.75em; height:34px;
													text-align:left;
													vertical-align: middle;">
											[제목]<c:out value="${lvo.b_title }" escapeXml="false" />
											<br>
											<c:set var="b_con" value="${lvo.b_con }" />
											<div style="overflow:hidden;
													text-overflow:ellipsis;
													word-wrap:break-word;
													display:-webkit-box;
												    -webkit-line-clamp:1;
												    -webkit-box-orient:vertical;">
												[내용]
												${fn:replace(fn:replace(b_con, "<p>", ""),"</p>","")}
											</div>
										</td>
										<td style="vertical-align: middle; word-break:keep-all;">
											<a href="" onclick="gogo('/board/board_detail?b_no=${lvo.b_no }')" class="btn btn-primary btn-sm text-end">바로가기</a>
										</td>
									</c:otherwise>
								</c:choose>
							</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
	
	</c:if>
	

	
	<script type="text/javascript">
		$(document).ready(function () {
		    $('#t1').DataTable({
		    	lengthMenu: [ 10, 15, 20, 25, 30 ],
		    	displayLength: 10,
		    	lengthChange : false,
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
		
		function gogo(url) {
			console.log('fffffff');
			opener.parent.location.href=${root }url;
		}
	
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<title>부들부들 | 마이 페이지</title>

<head>
<script type="text/javascript"src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!-- 별점을 위한 css -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

<!-- DataTables 스크립트 -->
<script
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"
	crossorigin="anonymous"></script>
	
<!-- BMI 차트 스크립트 -->
<script type="text/javascript">
	google.charts.load('current', {
		packages : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var jsondata = $.ajax({
			url : "/user/bmichart",
			dataType : "json",
			async : false
		}).responseText;

		var data = new google.visualization.DataTable(jsondata);

		var options = {
			isStacked : true,
			series : {
				// under
				0 : {
					areaOpacity : 0.4,
					color : '#9cbbda',
				},

				// normal
				1 : {
					areaOpacity : 0.4,
					color : '#93cca9',
				},

				// overweight
				2 : {
					areaOpacity : 0.4,
					color : '#ffe22c',
				},

				// obese
				3 : {
					areaOpacity : 0.4,
					color : '#eaa353',
				},

				// extremly obese
				4 : {
					areaOpacity : 0.4,
					color : '#e14351',
				},

				// line
				5 : {
					color : '#000000',
					type : 'line'
				}
			},
			seriesType : 'area',
			vAxis : {
				ticks : [ 10, 18.5, 25, 30, 35, 45 ],
				viewWindow : {
					min : 10
				}
			},
			hAxis : {
				slantedText : true,
				slantedTextAngle : 45,
				gridlines : {
					color : '#333',
					minSpacing : 1
				}
			}
		};

		var chart = new google.visualization.ComboChart(document
				.getElementById('curve_chart'));

		chart.draw(data, options);
	}
	
</script>

<!-- 별점 표시를 위한 스타일 -->
<style type="text/css">

		.rating2 {
		   font-family: 'Font Awesome 5 Free';
		   color: #ffce67;
		   margin-bottom: 5px;
		   font-size: 0;
		   position: relative;
		   width: 110px;
		   direction: rtl;
		}
		
		.rating2 input {
		   display: none;
		}
		
		.rating2 span {
		   font-family: 'Font Awesome 5 Free' !important;
		   width: 11px;
		   font-size: 20px;
		   display: inline-block;
		   overflow: hidden;
		}
		
		.rating2 span:before{
		   content: "\f005";
		}
		
		.rating2 :checked ~ span {
		   font-weight: 900;
		}
		
		.rating2 span:nth-of-type(2n){
		   text-indent: -11px;
		}

</style>

</head>

<body>

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp" />
	<div class="container" style="margin-top: 150px">
		<div class="card shadow">
		<ul class="nav nav-tabs" role="tablist" style="padding-top:20px;">
		  <li class="nav-item text-center fw-bold fs-3" style="color:black; width:10%;">${user.u_id}</li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link active" data-bs-toggle="tab" href="#profile" aria-selected="false" role="tab" tabindex="-1" style="color:black;">프로필</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" data-bs-toggle="tab" href="#log" aria-selected="true" role="tab" style="color:black;">활동내역</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" data-bs-toggle="tab" href="#scrap" aria-selected="true" role="tab" style="color:black;">스크랩</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" data-bs-toggle="tab" href="#board" aria-selected="true" role="tab" style="color:black;">작성한 게시글</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" data-bs-toggle="tab" href="#comment" aria-selected="true" role="tab" style="color:black;">작성한 댓글</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" data-bs-toggle="tab" href="#review" aria-selected="true" role="tab" style="color:black;">작성한 리뷰</a>
		  </li>
		</ul>
			<!-- tap 링크 내용 -->
			<div id="myTabContent" class="tab-content">
			
			  <div class="tab-pane fade active show" id="profile" role="tabpanel">
			  	<div class="row">
			  		<div class="col my-5 ms-5">
						<h3>${userInfo.u_name }</h3>
						<h5>
						주소 : ${userInfo.u_addr }<br>
						이메일 : ${userInfo.u_email }
						</h5>
						<br>
						<table id="BMItable" class="table table-hover table-bordered">
							<thead class="text-center table-secondary">
								<tr>
									<th>키</th>
									<th>몸무게</th>
									<th>BMI</th>
									<th>기록날짜</th>
								</tr>
							</thead>
							<tbody class="text-center">
								<c:forEach items="${BMIList}" var="bmi">
									<tr>
										<td style="width:20%;"><c:out value="${bmi.d_height }"/></td>
										<td style="width:20%;"><c:out value="${bmi.d_weight }"/></td>
						               	<td style="width:20%;"><c:out value="${bmi.d_bmi }"/></td>
						               	<td><fmt:formatDate value="${bmi.d_date}" pattern="YY-MM-dd hh:mm:ss"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<a href="" onclick="infoUpdate()" class="btn btn-primary float-right">프로필 수정</a>
						<a href="" onclick="add_bmi()" class="btn btn-primary float-right">키/몸무게 기록</a>
					</div>
					<div class="col">
						<!-- BMI 차트 부분 -->
						<div id="curve_chart" style="width: 700px; height: 600px"></div>
					</div>
					
				</div>
			  </div>
			  
			  <!-- 로그테이블 -->
			  <div class="tab-pane fade" id="log" role="tabpanel">
			  	<div class="row justify-content-center m-4">
			  	<div class="col-8">
			  	<table id="logtable" class="table table-hover table-bordered">
					<thead class="text-center table-secondary">
						<tr>
							<th>구분</th>
							<th>내용</th>
							<th>날짜</th>
							<th>바로가기</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<c:forEach items="${logList}" var="log">
							<tr>
								<c:if test="${log.l_div == 1}">
								<td style="width:15%;">스크랩</td>
								<td>${log.b_no}번 게시글을 스크랩 하였습니다.</td>
								</c:if>
								
								<c:if test="${log.l_div == 2}">
								<td style="width:15%;">게시글 작성</td>
								<td>${log.b_no}번 게시글을 작성 하였습니다.</td>
								</c:if>
								
								<c:if test="${log.l_div == 3}">
								<td style="width:15%;">댓글 작성</td>
								<td>${log.b_no}번 게시글에 ${log.l_reno}번째 댓글을 작성 하였습니다.</td>
								</c:if>
								
								<c:if test="${log.l_div == 4}">
								<td style="width:15%;">리뷰 등록</td>
								<td>${log.b_no}번 게시글에 ${log.l_reno}번째 댓글을 작성 하였습니다.</td>
								</c:if>
				               	
				               	<td style="width:20%;"><fmt:formatDate value="${log.l_date}" pattern="YY-MM-dd hh:mm:ss"/></td>
				               	<td style="width:10%;">
									<a href="${root }board/board_detail?b_no=${log.b_no }" class="btn btn-outline-secondary" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"><i class="bi bi-forward-fill"></i></a>
								</td>
							</tr>
							</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			  </div>
			  
			  <!-- 스크랩테이블 -->
			  <div class="tab-pane fade" id="scrap" role="tabpanel">
			  	<div class="row justify-content-center m-4">
			  	<div class="col-8">
			  	<table id="scraptable" class="table table-hover table-bordered">
					<thead class="text-center table-secondary">
						<tr>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>바로가기</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<c:forEach items="${scrapList}" var="scrap">
							<tr>
								<td><c:out value="[${scrap.b_div }] ${scrap.b_title }"/></td>
								<td style="width:15%;"><c:out value="${scrap.b_writer}"/></td>
				               	<td style="width:20%;"><fmt:formatDate value="${scrap.l_date}" pattern="YY-MM-dd hh:mm:ss"/></td>
				               	<td style="width:10%;">
									<a href="${root }board/board_detail?b_no=${scrap.b_no }" class="btn btn-outline-secondary" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"><i class="bi bi-forward-fill"></i></a>
								</td>
							</tr>
							</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			  </div>
			  
			  <!-- 작성한 게시글 테이블 -->
			  <div class="tab-pane fade" id="board" role="tabpanel">
			  	<div class="row justify-content-center m-4">
			  	<div class="col-8">
			  	<table id="boardtable" class="table table-hover table-bordered">
					<thead class="text-center table-secondary">
						<tr>
							<th>제목</th>
							<th>날짜</th>
							<th>바로가기</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<c:forEach items="${boardList}" var="board">
							<tr>
								<td><c:out value="[${board.b_div }] ${board.b_title }"/></td>
				               	<td style="width:20%;"><fmt:formatDate value="${board.l_date}" pattern="YY-MM-dd hh:mm:ss"/></td>
				               	<td style="width:10%;">
									<a href="${root }board/board_detail?b_no=${board.b_no }" class="btn btn-outline-secondary" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"><i class="bi bi-forward-fill"></i></a>
								</td>
							</tr>
							</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			  </div>
			  
			  <!-- 작성한 댓글 테이블 -->
			  <div class="tab-pane fade" id="comment" role="tabpanel">
			  	<div class="row justify-content-center m-4">
			  	<div class="col-8">
			  	<table id="commenttable" class="table table-hover table-bordered">
					<thead class="text-center table-secondary">
						<tr>
							<th>제목</th>
							<th>날짜</th>
							<th>바로가기</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<c:forEach items="${commentList}" var="comment">
							<tr>
								<td><c:out value="[${comment.b_div }] ${comment.b_title }"/></td>
				               	<td style="width:20%;"><fmt:formatDate value="${comment.l_date}" pattern="YY-MM-dd hh:mm:ss"/></td>
				               	<td style="width:10%;">
									<a href="${root }board/board_detail?b_no=${comment.b_no }" class="btn btn-outline-secondary" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"><i class="bi bi-forward-fill"></i></a>
								</td>
							</tr>
							</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			  </div>
			  
			  <!-- 작성한 리뷰 테이블 -->
			  <div class="tab-pane fade" id="review" role="tabpanel">
			  	<div class="row justify-content-center m-4">
			  	<div class="col-8">
			  	<table id="reviewtable" class="table table-hover table-bordered">
					<thead class="text-center table-secondary">
						<tr>
							<th>헬스장 이름</th>
							<th>별점</th>
							<th>날짜</th>
							<th>바로가기</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<c:forEach items="${reviewList}" var="review">
							<tr>
								<td><c:out value="${review.g_name }"/></td>
								<td class="rating2" style="width:20%;">
									<c:forEach var="i" begin="1" end="10" >
										<c:set var="score" value="${11-i }"/>
										<c:choose>
											<c:when test="${score == review.r_score}">
												<input type="radio" name="review${review.r_no }" checked="checked" readonly="readonly" value="${score }" id="rating2_03_${score }">
												<span></span>
											</c:when>
											<c:otherwise>
												<input type="radio" name="review${review.r_no }" readonly="readonly" value="${score }" id="rating2_03_${score }">
												<span></span>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</td>
				               	<td style="width:20%;"><fmt:formatDate value="${review.l_date}" pattern="YY-MM-dd hh:mm:ss"/></td>
				               	<td style="width:10%;">
									<a href="${root }gym/gym_detail?g_no=${review.g_no }" class="btn btn-outline-secondary" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"><i class="bi bi-forward-fill"></i></a>
								</td>
							</tr>
							</c:forEach>
					</tbody>
				</table>
				</div>
				</div>
			  </div>
			  
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
<script type="text/javascript">

$('#BMItable').DataTable({
	order: [[3, 'desc']],
	lengthChange: false,
	filter : false,
	displayLength: 5,
	"language": {
        "emptyTable": "기록된 데이터가 없어요. 키와 몸무게를 기록해주세요.",
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

$('#logtable').DataTable({
	order: [],
	lengthChange: false,
	filter : false,
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
});

$('#scraptable').DataTable({
	order: [],
	lengthChange: false,
	filter : false,
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
});

$('#boardtable').DataTable({
	order: [],
	lengthChange: false,
	filter : false,
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
});

$('#commenttable').DataTable({
	order: [],
	lengthChange: false,
	filter : false,
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
});

$('#reviewtable').DataTable({
	order: [],
	lengthChange: false,
	filter : false,
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
});


//bmi추가
function add_bmi(){
	var url='/user/whUpdate';
	var name='BMI추가';
	var pop_x=(window.screen.width - 500) / 2;
	var pop_y=(window.screen.height - 200)  / 2;
	var option='width=500, height=200, left='+pop_x+', top='+pop_y;
	window.open(url, name, option);
}

//정보수정
function infoUpdate(){
	var url='/user/infoUpdate';
	var name='회원정보수정';
	var pop_x=(window.screen.width - 800) / 2;
	var pop_y=(window.screen.height - 400)  / 2;
	var option='width=800, height=400, left='+pop_x+', top='+pop_y;
	window.open(url, name, option);
}

</script>
</body>
</html>





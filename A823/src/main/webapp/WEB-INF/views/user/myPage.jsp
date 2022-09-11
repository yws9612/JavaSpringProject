<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>

<head>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
			title : 'Example',			
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
</head>


<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp" />

	<div class="container" style="margin-top: 100px">
		<!-- 가운데정렬+네모안에 들어가지는 컨테이너 원치않음빼세여 -->
		<!-- Table -->
		<h2 class="mb-5">${user.u_name}</h2>
		<div class="card card-profile shadow">
			<!-- gray배경 -->
			<div class="row justify-content-center">
				<!-- 버튼정렬 -->
				<div class="col-lg-3 order-lg-2">
					<!-- 버튼정렬 -->
					<div class="card-profile-image">
						<a href="#플필사진 클릭하면 이동할거면 넣기"> <img
							src="https://image.msscdn.net/images/goods_img/20210517/1954888/1954888_1_500.jpg?t=20210517173507"
							class="rounded-circle shadow"></a>
					</div>
				</div>
			</div>

			<div
				class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
				<!-- 텍스트정렬 -->
				<div class="d-flex justify-content-between">
					<a href="${root}user/infoUpdate" class="btn btn-primary mr-4">정보 수정</a> <a
						href="${root}user/whUpdate" class="btn btn-primary float-right">키/몸무게 등록 및 변경</a>
				</div>
			</div>

			<div id="curve_chart" style="width: 800px; height: 600px"></div>

			</div>
			<hr class="my-4">
			<p>최근 게시글 테이블넣어야함다</p>
			<!-- 송이가 준 코드 -->
			<c:forEach items="${log }" var="log">
				<div>
					<div>
						<span> <c:if test="${log.l_div == 1 }">
                  					게시글 ${log.b_no}를 스크랩 하였습니다.
               					</c:if> <c:if test="${log.l_div == 2 }">
                  					게시글 ${log.b_no}를 작성 하였습니다.
               					</c:if> <c:if test="${log.l_div == 3 }">
                 					 게시글 ${log.b_no}에 ${log.l_reno}번째 댓글을 작성 하였습니다.
               					</c:if>
						</span> <span> <fmt:formatDate value="${log.l_date}"
								pattern="YY-MM-dd  hh:mm:ss" />
						</span>
					</div>
					<div>
						<span> <a href="/board/?^p^??b_no=${log.b_no}">${log.b_title}</a>
						</span> <span> ${log.b_writer} </span>
					</div>

				</div>
			</c:forEach>
			<a href="#" target="_blank">링크연결할거있음넣으세여</a>

		</div>
	</div>
	</div>

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
</body>
</html>





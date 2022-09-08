<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

 <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
          var data = google.visualization.arrayToDataTable([
            ['day', '몸무게', '키'],
            ['1일',  70, 180],
            ['10일',  80, 180],
            ['20일',  90, 180],
            ['30일',  100, 180]
          ]);


        var options = {
          title: '몸무게',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

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
					<a href="/infoUpdate" class="btn btn-primary mr-4">정보 수정</a> <a
						href="/whUpdate" class="btn btn-primary float-right">키/몸무게 등록</a>
				</div>
			</div>

			<div id="curve_chart" style="width: 1400px; height: 250px"></div>

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





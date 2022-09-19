<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부들부들 | 관리자 페이지</title>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script type="text/javascript">
	google.charts.load("current", {packages:["corechart"]});
	google.charts.load('current', {packages: ['corechart', 'bar']});
	google.charts.setOnLoadCallback(drawChart1);
	google.charts.setOnLoadCallback(drawChart2);

	
	
	function drawChart1(){
		var jsonData1 = $.ajax({
			type:"POST",
			url:"/admin/chart1",
			dataType:"json",
			async : false
		}).responseText;
		
	var data1 = new google.visualization.DataTable(jsonData1);	
	var options1 = {
	          title: '게시글 비율',
	        };

	var chart1 = new google.visualization.PieChart(document.getElementById('piechart'));
	chart1.draw(data1, options1);
	
	}


	
	function drawChart2(){
		var jsonData2 = $.ajax({
			type:"POST",
			url:"/admin/chart2",
			dataType:"json",
			async : false
		}).responseText;
		
	var data2 = new google.visualization.DataTable(jsonData2);
	var min=new Date(new Date().setMonth(new Date().getMonth()-5));
	var max=new Date(new Date().setMonth(new Date().getMonth()+7));
	console.log(min.getFullYear()+'-'+min.getMonth()+'//'+max.getFullYear()+'-'+max.getMonth());
	var options2 = {
	          title: '월별 가입자 수',
	          colors: ['#00ff99'],
	          hAxis: {
	              format: 'yyyy-mm',
	              viewWindow: {
	                min: [min.getFullYear(), min.getMonth()],
	                max: [max.getFullYear(), max.getMonth()]
	              }
	          },
	          legend:'bottom'
	        };

	var chart2 = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	chart2.draw(data2, options2);
	
	}
</script>


</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp" />
	
 
		<div class="container" style="margin-top: 100px">
		<!-- 가운데정렬+네모안에 들어가지는 컨테이너 원치않음빼세여 -->
		<!-- Table -->
		<h2 class="mb-5">관리자 페이지</h2>
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
				<!-- 
					<a href="${root}user/infoUpdate" class="btn btn-primary mr-4">정보 수정</a> <a
						href="${root}user/whUpdate" class="btn btn-primary float-right">키/몸무게 등록 및 변경</a>
						 -->
				</div>
			</div>

			<div id="piechart" style="width: 500px; height: 500px;"></div>
			
			<div id="chart_div" style="width: 500px; height: 400px;"></div>

			</div>
	
	
	
	
	
	
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
	
	


</body>
</html>
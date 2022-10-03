<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부들부들 | 현황 그래프</title>

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
				colors: ['#9BBFE0', '#E8A09A', '#FBE29F', '#C6D68F'],
				legend:{
					position : 'labeled',
					textStyle : {
						fontSize:16
					}
				},
				pieSliceText: 'none'
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
				colors: ['#C6D68F', '#E8A09A'],
				hAxis: {
					format: 'yyyy-mm',
					viewWindow: {
						min: [min.getFullYear(), min.getMonth()],
						max: [max.getFullYear(), max.getMonth()]
					}
				},
				legend:'bottom',
			};

	var chart2 = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	chart2.draw(data2, options2);
	
	}
</script>


</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp" />
	
 	
 	<!-- header에 안 가려지게 해주는 역할 -->
	<div class="container" style="margin-top: 100px">
		<h2 class="mb-5">관리자 페이지</h2>
		
		<div class="card card-profile shadow" style="margin-bottom:50px">
			<!-- gray배경 -->
			<div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
				<div class="d-flex justify-content-between">
					<h5>월별 가입자 수</h5>
				</div>
			</div>
			<div id="chart_div" style="width: 100%; height: 500px;"></div>
		</div>
		
		
		<div class="card card-profile shadow">
			<!-- gray배경 -->
			<div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
				<div class="d-flex justify-content-between">
					<h5>게시글 비율</h5>
				</div>
			</div>
			<div id="piechart" style="width: 100%; height: 500px; text-align: center"></div>
		</div>
		
	</div>
	
	
	
	
	
	
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
	
	


</body>
</html>
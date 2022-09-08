<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart</title>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script type="text/javascript">
	google.charts.load('current', {
		packages : [ 'corechart', 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart1);
	google.charts.setOnLoadCallback(drawChart2);

	function drawChart1() {
		var jsonData1 = $.ajax({
			url : "/admin/chart1",
			dataType : "json",
			async : false
		}).responseText;

		var data1 = new google.visualization.DataTable(jsonData1);
		var options1 = {
			title : 'aaaaaaaaaaaaa',
			colors : [ '#00ff99', '#00ff00', '#fff000', '#000fff' ], <%--각 영역의 색을 바꿉니다. --%>		
			pieSliceTextStyle :{
				color: 'red', 
				<%--fontName: <string>, --%>
				fontSize: 15			
			} <%--각 영역의 글자를 조정합니다. 
			색, 폰트, 크기를 바꿀 수 있습니다. 
			폰트는 현재 주석처리 되어있습니다. --%>
		};

		var chart1 = new google.visualization.PieChart(document
				.getElementById('piechart'));
		chart1.draw(data1, options1);

	}

	function drawChart2() {
		var jsonData2 = $.ajax({
			url : "/admin/chart2",
			dataType : "json",
			async : false
		}).responseText;

		var data2 = new google.visualization.DataTable(jsonData2);
		var min = new Date(new Date().setMonth(new Date().getMonth() - 5));
		console.log(min.getFullYear() + '-' + min.getMonth());
		var options2 = {
			colors : [ '#00ff99' ], <%--막대의 색을 바꿉니다. --%>
			hAxis : {
				format : 'yyyy-mm',
				viewWindow : {
					min : [ min.getFullYear(), min.getMonth() ],
					max : [ new Date().getFullYear(), new Date().getMonth() ]
				}
			},
			bar : {
				groupWidth:50 <%--막대의 가로크기를 조절합니다. 단위는 px --%>
			},
			legend : 'bottom'
		};

		var chart2 = new google.visualization.ColumnChart(document
				.getElementById('chart_div'));
		chart2.draw(data2, options2);

	}
</script>


</head>
<body>


	
	
	
	<div>
		관리자 페이지 카테고리 선택 부분?
	</div>
	
	
	
	<div>
		그래프1
	</div>
	<div id="piechart" style="width: 900px; height: 500px;"></div>
	
	
	
	<div>
		그래프2
	</div>
	<div id="chart_div" style="width: 500px; height: 200px;"></div>
	 
	
	<%--
	<c:import url="/WEB-INF/views/includes/header.jsp" />
	-->
	
	<!-- 
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
	 --%>
	
	


</body>
</html>
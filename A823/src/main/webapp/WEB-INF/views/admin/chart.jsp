<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart</title>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<script type="text/javascript">
	google.charts.load("current", {packages:["corechart"]});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart(){
		var jsonData = $.ajax({
			url:'<c:url value = "/admin/chart1/"/>',
			dataType:"json",
			async:false
		}).responseText;
	
	console.log("jsonData : " + jsonData);
	
	var data = new google.visualization.DataTable(jsonData);
	
	var options = {
	          title: 'aaaaaaaaaaaaa',
	          is3D: true,
	        };

	var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
	chart.draw(data, options);
	
	}
</script>


</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp" />
	
	
	
	<div>
		관리자 페이지 카테고리 선택 부분?
	</div>
	
	
	
	<div>
		그래프1
	</div>
	<div id="donutchart" style="width: 900px; height: 500px;"></div>
	
	
	
	<div>
		그래프2
	</div>
	
	
	
	
	
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
	
	
	


</body>
</html>
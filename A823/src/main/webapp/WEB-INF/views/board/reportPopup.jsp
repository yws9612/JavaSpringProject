<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>부들부들 | 신고하기</title>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	
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
		
	<div>
		신고하기는 이용수칙에 맞지 않는 글을 신고하는 기능이며, 반대 의견을 표시하기 위한 것이 아닙니다.
		신고는 취소할 수 없으며, 허위 신고의 경우 신고자가 제제를 받을 수 있음을 유념해 주세요.
	</div>

	<form action="${root}report" method="post">
		<input type="number" name="b_no" value="${log.b_no }" style="display: none">
		<input type="number" name="c_no" value="${log.c_no }" style="display: none">
		<input type="number" name="r_no" value="${log.r_no }" style="display: none">
		<input type="number" name="g_no" value="${log.g_no }" style="display: none">
		
		<div>
			<p>신고 사유를 선택해 주세요.</p>			
			
			<input type="radio" name="l_report" id="report1" value="영리목적/홍보/광고">
			<label for="report1">영리목적/홍보/광고</label>
			<br>
			
			<input type="radio" name="l_report" id="report2" value="개인정보노출">
			<label for="report2">개인정보노출</label>
			<br>
			
			<input type="radio" name="l_report" id="report3" value="불법정보/불법촬영">
			<label for="report3">불법정보/불법촬영</label>
			<br>
			
			<input type="radio" name="l_report" id="report4" value="음란성/선정성">
			<label for="report4">음란성/선정성</label>
			<br>
			
			<input type="radio" name="l_report" id="report5" value="욕설/인신공격/명예훼손">
			<label for="report5">욕설/인신공격/명예훼손</label>
			<br>
			
			<input type="radio" name="l_report" id="report6" value="아이디 거래">
			<label for="report6">아이디 거래</label>
			<br>
			
			<input type="radio" name="l_report" id="report7" value="같은 내용 반복(도배)">
			<label for="report7">같은 내용 반복(도배)</label>
		</div>
		
		<button type="submit">신고하기</button>
		<button onclick="javascript:window.close()" type="button">닫기</button>
		
	</form>
	
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			console.log(${log.b_no }+"|"+${log.c_no }+"|"+${log.r_no }+"|"+${log.g_no });
		});
	</script>

</body>
</html>
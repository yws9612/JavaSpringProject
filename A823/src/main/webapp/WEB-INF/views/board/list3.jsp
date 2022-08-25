<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>문서 제목</title>

	<!-- Bootstrap CSS CDN -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
	<!-- Bootstrap JS CDN -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
		crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>		
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">3</th>
					<td>나 운다</td>
					<td>내안경</td>
					<td>2300년</td>
					<td>2300</td>
				</tr>
					<tr>
					<th scope="row">2</th>
					<td>개발이란</td>
					<td>무엇일까</td>
					<td>2301년</td>
					<td>2302</td>
				</tr>
				<tr>
					<th scope="row">1</th>
					<td>서장훈</td>
					<td>내키는</td>
					<td>2302년</td>
					<td>2303</td>
				</tr>
			</tbody>
		</table>
		<div style="text-align:center;">
			<div class="btn-group" role="group" aria-label="Basic example">
				<button type="button" class="btn btn-outline-primary">이전</button>
				<button type="button" class="btn btn-outline-primary active">1</button>
				<button type="button" class="btn btn-outline-primary">다음</button>
            </div>
		</div>
	</div>
</body>
</html>

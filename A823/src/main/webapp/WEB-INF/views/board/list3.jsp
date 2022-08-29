<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script><!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div vlass = "container">
		<table class = "table">
			<thead>
				<tr>
					<th scope = "col">번호</th>
					<th scope = "col">제목</th>
					<th scope = "col">작성자</th>
					<th scope = "col">작성일</th>
					<th scope = "col">조회수</th>
				</tr>
			</thead>
				<tbody>
					<th scope = "row">3</th>
					<td>나 운다</td>
					<td>내 안경</td>
					<td>나 운다</td>
					<td>2008</td>
				</tbody>
			</table>
			<form action="search.php" method="post" autocomplete="off">
			<input type="text" title="검색">
			<button type="button" class = "btn btn-primary btn-sm">검색</button>
			<button type="button" class = "btn btn-primary byn-sm">글쓰기</button>
			</form>
			
			<div style="text-align: center;"></div>
				<div clas="btn-group" role="group" aria-label="Basic example">
					<button type="button" class="btn btn-outline-primary">이전</button>
					<button type="button" class="btn byn-outline-primary active">1</button>
					<button type="button" class="btn btn-outline-primary">다음</button>
				</div>
			</div>
		</div>
				
</body>
</html>
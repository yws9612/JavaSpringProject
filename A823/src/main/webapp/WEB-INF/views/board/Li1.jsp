<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script><!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>운동 게시판</title>
</head>
<body>
	<div class="container">
	<div class="row">
	 
	 <form>
      <select Upper body>
        <option>상체</option>
        <option>어깨</option>
        <option>팔</option>
        <option>복근</option>
        <option>등</option> 
      </select>

      <select lower body>
        <option>하체</option>
        <option>엉덩이</option>
        <option>허벅지</option>
   	    <option>종아리</option>    
      </select>
     </form>
	
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #eeeeee; text-align: center;">번호</th>
					<th style="background-color: #eeeeee; text-align: center;">제목</th>
					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					<th style="background-color: #eeeeee; text-align: center;">조회수</th>
				</tr>
			</thead>
			<tbody>								
				<tr>
					<td>1</td>
					<td>test</td>
					<td>황용학 테스트입니다.</td>
					<td>2022-08-25</td>
					<td>10000000</td>
				</tr>
			</tbody>
		</table>
		
		<div class = "page-wrap">
		
				<a href="/board/list?p=1" >1</a>
				<a href="/board/list?p=2" >2</a>
				<a href="/board/list?p=3" >3</a>
				<a href="/board/list?p=4" >4</a>
				<a href="/board/list?p=5" >5</a>
		
		</div>
		
		<div class="form-group row justify-content-center">
		<div class="w100" style="padding-right:10px">			
		<select class="form-control form-control-sm" name="searchType" id="searchType">
		<option value="title">제목</option>					
		<option value="Content">본문</option>					
		<option value="reg_id">작성자</option>				
				
		<div class="w300" style="padding-right:10px">
		<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">	
		<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button></select></div>	
		<button class="float-right">글쓰기</button>
	</div>
</div>

</body>
</html>
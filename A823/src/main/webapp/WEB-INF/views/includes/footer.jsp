<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<div style="background: white">
	<div class="container border-top">
  <footer class="row row-cols-1 row-cols-sm-1 row-cols-md-5 py-5 my-5 justify-content-between navbar-fixed-bottom">

    <div class="col-md-auto">
      <a href="${root }main/main" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
        <!-- 로고 이미지 삽입 -->
		<img src="/resources/img/logo/logo_long.png" class="d-block" alt="부들부들로고" width="150">
      </a>
      <a class="text-muted text-decoration-none">© 2022 Copyright 5dle5dle</a><br>
	  <a href="${root }user/privacy" class="text-muted text-decoration-none">개인정보처리방침</a><a class="text-muted text-decoration-none"> | </a>
	  <a href="${root }user/termsofservice" class="text-muted text-decoration-none">서비스 이용약관</a>
	  <br><br>
      <table>
      	<tr><td>팀장 서연운 | 3yws@naver.com</td></tr>
      	<tr><td>팀원 문종주 | 1co1313@naver.com</td></tr>
      	<tr><td>팀원 이송이 | bluehosi0408@naver.com</td></tr>
      	<tr><td>팀원 이윤경 | yunkung0323@naver.com</td></tr>
      	<tr><td>팀원 최서영 | seoyoung6792@naver.com</td></tr>
      	<tr><td>팀원 황용학 | dydgkr93@naver.com</td></tr>
      </table>
      
      
      
    </div>
	<div><!-- 공간띄우기 --></div>

    <div class="col-md-auto text-end">
      <h5>운동방법</h5>
      <ul class="nav flex-column justify-content-end">
        <li class="nav-item mb-2"><a href="${root}board/exercise_home_way" class="nav-link p-0 text-muted">홈트레이닝</a></li>
        <li class="nav-item mb-2"><a href="${root}board/exercise_gym_way" class="nav-link p-0 text-muted">짐트레이닝</a></li>
      </ul>
    </div>

    <div class="col-md-auto text-end">
      <h5>운동게시판</h5>
      <ul class="nav flex-column justify-content-end">
        <li class="nav-item mb-2"><a href="${root}board/exercise_routine" class="nav-link p-0 text-muted">운동루틴공유</a></li>
        <li class="nav-item mb-2"><a href="${root}board/exercise_way" class="nav-link p-0 text-muted">운동방법공유</a></li>
        <li class="nav-item mb-2"><a href="${root}board/exercise_honey_tip" class="nav-link p-0 text-muted">운동꿀팁공유</a></li>
      </ul>
    </div>

    <div class="col-md-auto text-end">
      <h5>운동일지</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="${root}board/exercise_diary" class="nav-link p-0 text-muted">운동일지공유</a></li>
      </ul>
    </div>
    
    <div class="col-md-auto text-end">
      <h5>헬스장정보</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">헬스장 위치</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">헬스장 후기</a></li>
      </ul>
    </div>
    
  </footer>
</div>
</div>
</body>
</html>
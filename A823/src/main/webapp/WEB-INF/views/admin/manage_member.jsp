<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp" />
	
	
	
	<div>
		관리자 페이지 카테고리 선택 부분?
	</div>
	
	
	
	<div>
		<table>
			<tr>
				<td>회원번호</td>
				<td>이름</td>
				<td>ID</td>
				<td>E-mail</td>
				<td>주소</td>			
			</tr>
			
			<c:forEach items="members" var="mem">
				<c:if test="${mem.u_admin } eq N">
					<tr>
						<td>${mem.u_no }</td>
						<td>${mem.u_name }</td>
						<td>${mem.u_id }</td>
						<td>${mem.u_email }</td>
						<td>${mem.u_addr }</td>
						<td><button onclick="">탈퇴</button></td>				
					</tr>				
				</c:if>		
			</c:forEach>
			
		</table>
	</div>
	
	
	
	
	
	<c:import url="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>
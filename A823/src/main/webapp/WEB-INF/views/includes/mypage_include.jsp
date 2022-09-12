<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>MyPage</title>

</head>

<body>


	<div class="container" style="margin-top:100px">
		<!-- 가운데정렬+네모안에 들어가지는 컨테이너 원치않음빼세여 -->
		<!-- Table -->
		<h2 class="mb-5">유저이름넣어야함</h2>
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

			<div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
				<!-- 텍스트정렬 -->
				<div class="d-flex justify-content-between">
					<a href="#" class="btn btn-primary mr-4">정보 수정</a> 
					<a href="#" class="btn btn-primary float-right">팔로우</a>
				</div>
			</div>


			<div class="card-body pt-0 pt-md-4">
				<div class="row">
					<div class="col">
						<div
							class="card-profile-stats d-flex justify-content-center mt-md-5">
							<div>
								<span class="heading"><a href="#"><h2>22</h2></a></span> <span
									class="description"><h6>게시글</h6></span>
							</div>
							<div>
								<span class="heading"><a href="#"><h2>89</h2></a></span> <span
									class="description"><h6>댓글</h6></span>
							</div>
							<div>
								<span class="heading"><a href="#"><h2>10</h2></a></span> <span
									class="description"><h6>스크랩</h6></span>
							</div>
						</div>
					</div>
				</div>
				<hr class="my-4">
				<p>최근 게시글 테이블넣어야함다</p>
				<!-- 송이가 준 코드 -->
				<c:forEach items="${log }" var="log">
					<div>
						<div>
							<span> 
								<c:if test="${log.l_div == 1 }">
                  					게시글 ${log.b_no}를 스크랩 하였습니다.
               					</c:if> 
               					<c:if test="${log.l_div == 2 }">
                  					게시글 ${log.b_no}를 작성 하였습니다.
               					</c:if> 
               					<c:if test="${log.l_div == 3 }">
                 					 게시글 ${log.b_no}에 ${log.l_reno}번째 댓글을 작성 하였습니다.
               					</c:if>
							</span> 
							<span> 
								<fmt:formatDate value="${log.l_date}" pattern="YY-MM-dd  hh:mm:ss" />
							</span>
						</div>
						<div>
							<span> <a href="/board/?^p^??b_no=${log.b_no}">${log.b_title}</a>
							</span> <span> ${log.b_writer} </span>
						</div>

					</div>
				</c:forEach>
				<a href="#" target="_blank">링크연결할거있음넣으세여</a>

			</div>
		</div>
	</div>

</body>
</html>





<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>부들부들 | 헬스장 상세보기</title>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">
	
	<!-- 별점을 위한 css -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
	
	<!-- kakaomap -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dd8333a7bf035084aa14ad40915b52d&libraries=services"></script>
	
	<!-- 2:각 후기에 표시 / 3:별점 평균에 사용-->
	<style>
		.rating {
		   font-family: 'Font Awesome 5 Free';
		   color: #ffce67;
		   margin-bottom: 5px;
		   font-size: 0;
		   position: relative;
		   width: 130px;
		   direction: rtl;
		}
		
		.rating input {
		   display: none;
		}
		
		.rating label {
		   font-family: 'Font Awesome 5 Free' !important;
		   width: 13px;
		   font-size: 24px;
		   display: inline-block;
		    overflow: hidden;
		   cursor: pointer;
		}
		
		.rating label:before{
		   content: "\f005";
		}
		
		.rating :checked ~ label, .rating label:hover, .rating label:hover ~ label {
		   font-weight: 900;
		}
		
		.rating label:hover, .rating label:hover ~ label {
		   color: #ffce67;
		}
		
		.rating label:nth-of-type(2n){
		   text-indent: -13px;
		}
		.rating2 {
		   font-family: 'Font Awesome 5 Free';
		   color: #ffce67;
		   margin-bottom: 5px;
		   font-size: 0;
		   position: relative;
		   width: 110px;
		   direction: rtl;
		}
		
		.rating2 input {
		   display: none;
		}
		
		.rating2 span {
		   font-family: 'Font Awesome 5 Free' !important;
		   width: 11px;
		   font-size: 20px;
		   display: inline-block;
		   overflow: hidden;
		}
		
		.rating2 span:before{
		   content: "\f005";
		}
		
		.rating2 :checked ~ span {
		   font-weight: 900;
		}
		
		.rating2 span:nth-of-type(2n){
		   text-indent: -11px;
		}
		.rating3 {
		   font-family: 'Font Awesome 5 Free';
		   color: #ffce67;
		   margin-bottom: 5px;
		   font-size: 0;
		   position: relative;
		   width: 150px;
		   direction: rtl;
		}
		
		.rating3 input {
		   display: none;
		}
		
		.rating3 span {
		   font-family: 'Font Awesome 5 Free' !important;
		   width: 15px;
		   font-size: 28px;
		   display: inline-block;
		   overflow: hidden;
		}
		
		.rating3 span:before{
		   content: "\f005";
		}
		
		.rating3 :checked ~ span {
		   font-weight: 900;
		}
		
		.rating3 span:nth-of-type(2n){
		   text-indent: -15px;
		}
	</style>

</head>



<body>

<!-- HEADER -->
<c:import url="/WEB-INF/views/includes/header.jsp" />

<div class="container mt-3">
<div class="row d-flex justify-content-center" style="margin-top:120px; margin-bottom:50px;">
<div class="col-md-10">
<div class="shadow p-4 bg-white rounded">

	<div class="col text-end">
		<a href="/gym/gym_list" class="btn btn-outline-primary btn-sm">
			&nbsp;<i class="bi bi-list"></i>&nbsp;
		</a>
	</div>
	
	<h3>${gym.g_name }</h3>
	<!-- 회원에게만 후기 평균/개수 -->
	<c:if test="${not empty sessionScope.user.u_id }"> 
		<table>
			<tr>
				<td style="padding-right:10px">
					<div class="rating3 mt-1">
						<c:forEach var="i" begin="1" end="10" >
							<c:set var="score" value="${11-i }"/>
							<c:choose>
								<c:when test="${score == review_info.avg_score}">
									<input type="radio" name="avg_review" checked="checked" readonly="readonly" value="${score }" id="rating3_03_${score }">
									<span></span>
								</c:when>
								<c:otherwise>
									<input type="radio" name="avg_review" readonly="readonly" value="${score }" id="rating3_03_${score }">
									<span></span>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</td>
			
				<td>
					<span style="font-size:12pt; ">		
						(${review_info.cnt_review}<c:if test="${review_info.cnt_review >=10}">+</c:if>)
					</span>
				</td>
			</tr>
		</table>		
	</c:if>
	
	<br>

	<p class="mt10 mb10">
      <span class="bold">주소</span> : ${gym.g_addr }<br/>
      <span class="bold">전화번호</span> : ${gym.g_call }<br/>
	</p>
	<br>
	
	<!-- 카카오맵 -->
	<div data-viewid="findway" data-root="" class="cont_findway">
		<div id="map" style="width:100%;height:300px;"></div>
	</div>
	<br>
	
	
	<!-- 
	<div class="d-flex justify-content-between align-items-center">
		<button type="button" class="btn btn-outline-primary btn-sm">최신순</button>
		<button type="button" class="btn btn-outline-primary btn-sm">인기순</button>
	</div>
	 -->
	 
	                 
	<!-- 리뷰작성폼+리뷰, 회원만 리뷰 작성+볼 수 있게끔 -->
	<c:choose>
		<c:when test="${empty sessionScope.user.u_id }">
		</c:when>
		
		
		<c:otherwise>
			<!-- 리뷰작성폼 -->
			<form method="post" action="new_review">
				<div class="mt-4 d-flex flex-row"> 
				<!-- <img src="https://static.coupangcdn.com/image/product/image/vendoritem/2019/01/02/4116314532/2583b91d-1493-49af-8b7f-fdbaf8fbd4eb.jpg" width="100" height="100"> -->
					<div class="w-100"> 
						<input type="hidden" name="u_no" value="${sessionScope.user.u_no }"> 
						<input type="hidden" name="g_no" value="${gym.g_no }">
						
						<!-- 별점 -->
						<div class="rating mt-1">
						   <input type="radio" name="r_score" value="10" id="rating_03_10">
						   <label for="rating_03_10"></label>
						   <input type="radio" name="r_score" value="9" id="rating_03_9">
						   <label for="rating_03_9"></label>
						   <input type="radio" name="r_score" value="8" id="rating_03_8">
						   <label for="rating_03_8"></label>
						   <input type="radio" name="r_score" value="7" id="rating_03_7">
						   <label for="rating_03_7"></label>
						   <input type="radio" name="r_score" value="6" id="rating_03_6">
						   <label for="rating_03_6"></label>
						   <input type="radio" name="r_score" value="5" id="rating_03_5">
						   <label for="rating_03_5"></label>
						   <input type="radio" name="r_score" value="4" id="rating_03_4">
						   <label for="rating_03_4"></label>
						   <input type="radio" name="r_score" value="3" id="rating_03_3">
						   <label for="rating_03_3"></label>
						   <input type="radio" name="r_score" value="2" id="rating_03_2">
						   <label for="rating_03_2"></label>
						   <input type="radio" name="r_score" value="1" id="rating_03_1">
						   <label for="rating_03_1"></label>
						</div>
						
						<textarea name="r_rev" class="form-control" style="resize: none"></textarea>
					
					</div>
				</div>
				
				<div class="d-grid gap-2 mt-3 mb-4">
				  <button class="btn btn-primary btn-sm" type="submit">등록</button>
				</div>			 
			</form>			                
	                
			<!-- 리뷰 -->
			<c:forEach items="${reviews}" var="rvo">
				<div class="d-flex flex-row mt-4"> 
				<!-- <img src="https://mblogthumb-phinf.pstatic.net/20160516_270/jelly_dear_1463329244992Suz0h_PNG/11.PNG?type=w2" width="30" height="30" style="margin-right:10px;"> -->
				<div style="width:10px; height:30px;display:inline-block"></div>
				<div class="ml-2 w-100">
				
				<div class="d-flex justify-content-between align-items-center">		
					<div class="d-flex flex-row align-items-center"> 	
						<span class="font-weight-bold text-primary">
							<c:out value="${rvo.u_id }"/>
						</span> 
					</div> 
					<small class="text-primary">
						<fmt:formatDate value="${rvo.r_date}" pattern="yyyy. MM. dd"/>
					</small>
				</div>
				
				<table style="width:100%;">
					<tr style="vertical-align: middle">
						<td style="width:140px">
							<small class="text-warning mt-2"><!-- 별표시 -->
								<div class="rating2 mt-1">
									<c:forEach var="i" begin="1" end="10" >
										<c:set var="score" value="${11-i }"/>
										<c:choose>
											<c:when test="${score == rvo.r_score}">
												<input type="radio" name="review${rvo.r_no }" checked="checked" readonly="readonly" value="${score }" id="rating2_03_${score }">
												<span></span>
											</c:when>
											<c:otherwise>
												<input type="radio" name="review${rvo.r_no }" readonly="readonly" value="${score }" id="rating2_03_${score }">
												<span></span>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</div>			
							</small>
						</td>
						
						<td>
							<small class="text-justify mt-2"><!-- 리뷰내용 -->
								<c:out value="${rvo.r_rev }"/>
							</small>
						</td>
						
						<c:choose>
							<c:when test="${sessionScope.user.u_id eq rvo.u_id }">
								<td style="width:40px" align="right">
									<a href="deletereview?g_no=${gym.g_no }&r_no=${rvo.r_no }" style="color:silver; font-size:0.8em; text-decoration:none;">삭제</a>
								</td>
							</c:when>
							<c:when test="${not empty sessionScope.user.u_id }">
								<td style="width:40px" align="right">
									<a href="" onclick="reportr(${rvo.r_no})" style="color:silver; font-size:0.8em; text-decoration:none;">신고</a>
								</td>
							</c:when>
						</c:choose>
					</tr>
				</table>
				
				</div></div>	
				<hr>
			</c:forEach>
		</c:otherwise>	
	</c:choose>
	


</div></div></div></div>



<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp" />




	<script>	
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${gym.g_addr}', function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px; text-align:center; padding:6px 0; word-break:keep-all;">${gym.g_name}</div>'
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		}); 
		
		
		
		$(document).ready(function(){
			if("${success}" == 'true') {
				alert('리뷰가 등록되었습니다.');
			}
			
			if ("${deleted}" == 'true') {
				alert('삭제되었습니다.');
			}
		});
		
		
		

		function reportr(r_no){
			var url='/report/report_review?r_no='+r_no;
			var name='신고하기';
			var pop_x=(window.screen.width / 2) - 260;
			var pop_y=(window.screen.height / 2) - 300;
			var option='width=520, height=500, left='+pop_x+', top='+pop_y;
			window.open(url, name, option);
		}
		function confirmreport(){
			alert('신고 되었습니다.');
		}
		
		
		
		
	</script>

</body>
</html>
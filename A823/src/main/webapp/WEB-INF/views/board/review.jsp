<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>후기</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">

<!-- 별점을 위한 css -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

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
</style>


</head>

<body>

<br/><br/>

<div class="container mt-3">
<div class="row d-flex justify-content-center">
<div class="col-md-5">

<div class="shadow p-4 bg-white rounded">
<h3>상세정보</h3><br>
<p class="mt10 mb10">
      <span class="bold">상호명</span> : 스포애니 테헤란로점 <br/>
      <span class="bold">주소</span> : 서울 강남구 언주로 807 소촌빌딩 6층 <br/>
      <span class="bold">전화번호</span> : 02-1234-5678 <br/>
</p>
<br><br>
<!-- 카카오맵 -->
<div data-viewid="findway" data-root="" class="cont_findway">
<h3 class="tit_subject">찾아가는 길</h3>
<div id="map" style="width:100%;height:250px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dd8333a7bf035084aa14ad40915b52d&libraries=services"></script>
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
geocoder.addressSearch('서울 강남구 언주로 807 소촌빌딩 6층', function(result, status) {

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
            content: '<div style="width:150px;text-align:center;padding:6px 0;">스포애니 테헤란로점</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script></div>
<br><br>

<div class="d-flex justify-content-between align-items-center">
<button type="button" class="btn btn-outline-primary btn-sm">최신순</button>
<button type="button" class="btn btn-outline-primary btn-sm">인기순</button>
</div>


<div class="mt-4 d-flex flex-row"> 
<img src="https://static.coupangcdn.com/image/product/image/vendoritem/2019/01/02/4116314532/2583b91d-1493-49af-8b7f-fdbaf8fbd4eb.jpg" width="100" height="100">
<div class="w-100"> 
<textarea class="form-control"></textarea>

<!-- 별점 -->
<div class="rating mt-1">
   <input type="radio" name="rating[03]" value="10" id="rating_03_10">
   <label for="rating_03_10"></label>
   <input type="radio" name="rating[03]" value="9" id="rating_03_9">
   <label for="rating_03_9"></label>
   <input type="radio" name="rating[03]" value="8" id="rating_03_8">
   <label for="rating_03_8"></label>
   <input type="radio" name="rating[03]" value="7" id="rating_03_7">
   <label for="rating_03_7"></label>
   <input type="radio" name="rating[03]" value="6" id="rating_03_6">
   <label for="rating_03_6"></label>
   <input type="radio" name="rating[03]" value="5" id="rating_03_5">
   <label for="rating_03_5"></label>
   <input type="radio" name="rating[03]" value="4" id="rating_03_4">
   <label for="rating_03_4"></label>
   <input type="radio" name="rating[03]" value="3" id="rating_03_3">
   <label for="rating_03_3"></label>
   <input type="radio" name="rating[03]" value="2" id="rating_03_2">
   <label for="rating_03_2"></label>
   <input type="radio" name="rating[03]" value="1" id="rating_03_1">
   <label for="rating_03_1"></label>
</div>

</div></div>

<div class="d-grid gap-2 mt-3 mb-4">
  <button class="btn btn-primary btn-sm" type="button">등록</button>
</div>
                
                
<!-- 코멘트 1개  -->
<div class="d-flex flex-row mt-4"> 
<img src="https://mblogthumb-phinf.pstatic.net/20160516_270/jelly_dear_1463329244992Suz0h_PNG/11.PNG?type=w2" width="30" height="30" style="margin-right:10px;">
<div class="ml-2 w-100">
<div class="d-flex justify-content-between align-items-center">
<div class="d-flex flex-row align-items-center"> 

<span class="font-weight-bold text-primary">작성자어피치</span> 
</div> 
<small class="text-primary">작성날짜가 들어가야함</small>
</div>
<small class="text-warning mt-2">얘가준별점넣기</small>
<small class="text-justify mt-2">코멘트내용 정말좋구요진짜좋아요레알좋습니다정말좋구요진짜좋아요레알좋습니다정말좋구요진짜좋아요레알좋습니다정말좋구요진짜좋아요레알좋습니다정말좋구요진짜좋아요레알좋습니다정말좋구요진짜좋아요레알좋습니다</small>
</div></div>

<!-- 코멘트 1개 끗 --><hr>

<!-- 코멘트 1개  -->
<div class="d-flex flex-row mt-4"> 
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2Owhi7hbrAwBe3mzrTL1BToYI0BH9EfaOzn11OLrb57jLW4DG5jOhgKBYWZ-ZZko2ZBc&usqp=CAU" width="30" height="30" style="margin-right:10px;">
<div class="ml-2 w-100">
<div class="d-flex justify-content-between align-items-center">
<div class="d-flex flex-row align-items-center"> 

<span class="font-weight-bold text-primary">작성자대두튜브</span> 
</div> 
<small class="text-primary">작성날짜가 들어가야함</small>
</div>
<small class="text-warning mt-2">얘가준별점넣기</small>
<small class="text-justify mt-2">아별로에요 별루라구요 진짜 별론데 가지마세요 아별로에요 별루라구요 진짜 별론데 가지마세요아별로에요 별루라구요 진짜 별론데 가지마세요아별로에요 별루라구요 진짜 별론데 가지마세요 </small>
</div></div>

<!-- 코멘트 1개 끗 --><hr>


</div></div></div></div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<h3>헬스장위치</h3><br>
         <fieldset>
            <div>
               <form>
                            서울시 : <select style="width:170px;">
                     <option >OO구</option>
                     <option value="강남구">강남구</option>
                     <option value="강동구">강동구</option>
                     <option value="강서구">강서구</option>
                     <option value="강북구">강북구</option>
                     <option value="관악구">관악구</option>
                     <option value="광진구">광진구</option>
                     <option value="구로구">구로구</option>
                     <option value="금천구">금천구</option>
                     <option value="노원구">노원구</option>
                     <option value="동대문구">동대문구</option>
                     <option value="도봉구">도봉구</option>
                     <option value="동작구">동작구</option>
                     <option value="마포구">마포구</option>
                     <option value="서대문구">서대문구</option>
                     <option value="성동구">성동구</option>
                     <option value="성북구">성북구</option>
                     <option value="서초구">서초구</option>
                     <option value="송파구">송파구</option>
                     <option value="영등포구">영등포구</option>
                     <option value="용산구">용산구</option>
                     <option value="양천구">양천구</option>
                     <option value="은평구">은평구</option>
                     <option value="종로구">종로구</option>
                     <option value="중구">중구</option>
                     <option value="중랑구">중랑구</option>
                  </select> <input type="text" id="search-text" placeholder="search"
                     class="search-box"> <span class="list-count"></span> <input
                     type="button" value="검색">
               </form></div></fieldset>

               <table class="register01" summary="">
               <colgroup>
                  <col width="300" />
                  <col width="600" />
               </colgroup>
               <tbody>
   
                  <tr>
                     <td class="pt10 pb10">
                        
                     <div style="color: #000000; font-weight: bold;font-size: 14px;display:inline-block;">
                     <a href='https://hianna.tistory.com' target='_blank'>스포애니 테헤란로점</a></div>                             
                     </td>
                     <td>
                        <p class="mt10 mb10">
                           <span class="bold">주소</span> : 서울 강남구 언주로 807 소촌빌딩 6층 <br/>
                           <span class="bold">전화번호</span> : 02-1234-5678 <br/>
                           
                        </p>
                        
                     </td>
                  </tr>
                  <tr>
                     <td class="pt10 pb10">
                        
                     <div style="color: #000000; font-weight: bold;font-size: 14px;display:inline-block;">
                     <a href='https://hianna.tistory.com' target='_blank'>대치동점</a></div>                             
                     </td>
                     <td>
                        <p class="mt10 mb10">
                           <span class="bold">주소</span> : 서울 강남구 도곡로 510 지하1층 <br/>
                           <span class="bold">전화번호</span> : 02-1234-5678 <br/>
                           
                        </p>
                        
                     </td>
                  </tr>
                  
                  
      </tbody>
</body>
</html>

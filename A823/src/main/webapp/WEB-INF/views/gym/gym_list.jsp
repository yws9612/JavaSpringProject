<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>부들부들 | 헬스장 찾기</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.0/dist/minty/bootstrap.min.css">
		
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		
	<script type="text/javascript">
		frm.textValue.value = frm.selectBox.options[frm.selectBox.selectedIndex].text;
	</script>  
    <script>
      function optionChange() {
        var a = ["전체", "강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
        var b = ["전체", "중구","동구","미추홀구","연수구","남동구","부평구","계양구","서구","강화군","옹진군"];
        var c = ["전체", "동구","중구","서구","유성구","대덕구"];
        var d = ["전체", "동구","서구","남구","북구","광산구"];
        var e = ["전체","수성구","달서구","달성군"];
        var f = ["전체","서구","동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구","금정구","연제구","수영구","사상구","기장군"];
        var g = ["전체"];
        var h = ["전체", "울주군"];
        var i = ["전체", "제주시","서귀포시"];
        var j = ["전체","수원시","수원시 장안구","수원시 권선구","수원시 팔달구","수원시 영통구","성남시","성남시 수정구","성남시 중원구","성남시 분당구","의정부시","안양시","안양시 만안구","안양시 동안구","부천시","광명시","평택시","동두천시","안산시","안산시 상록구","안산시 단원구","고양시","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시","구리시","남양주시","오산시","시흥시","군포시","의왕시","하남시","용인시","용인시 처인구","용인시 기흥구","용인시 수지구","파주시","이천시","안성시","김포시","화성시","광주시","양주시","포천시","여주시","연천군","가평군","양평군"];
        var k = ["전체","춘천시","원주시","강릉시","동해시","태백시","속초시","삼척시","홍천군","횡성군","영월군","평창군","정선군","철원군","화천군","양구군","인제군","고성군","양양군"];
        var l = ["전체","창원시","창원시 의창구","창원시 성산구","창원시 마산합포구","창원시 마산회원구","창원시 진해구","진주시","통영시","사천시","김해시","밀양시","거제시","양산시","의령군","함안군","창녕군","남해군","하동군","산청군","함양군","거창군","합천군"];
        var m = ["전체","포항시","포항시 남구","포항시 북구","경주시","김천시","안동시","구미시","영주시","영천시","상주시","문경시","경산시","군위군","의성군","청송군","영양군","영덕군","청도군","고령군","성주군","칠곡군","예천군","봉화군","울진군","울릉군"];
        var n = ["전체","목포시","여수시","순천시","나주시","광양시","담양군","곡성군","구례군","고흥군","보성군","화순군","장흥군","강진군","해남군","영암군","무안군","함평군","영광군","장성군","완도군","진도군","신안군"];
        var o = ["전체","전주시","전주시 완산구","전주시 덕진구","군산시","익산시","정읍시","남원시","김제시","완주군","진안군","무주군","장수군","임실군","순창군","고창군","부안군"];
        var p = ["전체","천안시","천안시 동남구","천안시 서북구","공주시","보령시","아산시","서산시","논산시","계룡시","당진시","금산군","부여군","서천군","청양군","홍성군","예산군","태안군"];
        var q = ["전체","청주시","청주시 상당구","청주시 서원구","청주시 흥덕구","청주시 청원구","충주시","제천시","보은군","옥천군","영동군","증평군","진천군","괴산군","음성군","단양군"];
        
        var v = $( '#s1' ).val();
        var o;
        if ( v == 'a' ) {
          o = a;
        } else if ( v == 'b' ) {
          o = b;
        } else if ( v == 'c' ) {
          o = c;
        } else if ( v == 'd' ) {
          o = d;
        } else if ( v == 'e' ) {
          o = e;
        } else if ( v == 'f' ) {
          o = f;
        } else if ( v == 'g' ) {
          o = g;
        } else if ( v == 'h' ) {
          o = h;
        } else if ( v == 'i' ) {
          o = i;
        } else if ( v == 'j' ) {
          o = j;
        } else if ( v == 'k' ) {
          o = k;
        } else if ( v == 'l' ) {
          o = l;
        } else if ( v == 'm' ) {
          o = m;
        } else if ( v == 'n' ) {
          o = n;
        } else if ( v == 'o' ) {
          o = o;
        } else if ( v == 'p' ) {
          o = p;
        } else if ( v == 'q' ) {
          o = q;
        } else {
          o = [];
        }
        $( '#s2' ).empty();
        $( '#s2' ).append( '<option></option>' );
        for ( var i = 0; i < o.length; i++ ) {
          $( '#s2' ).append( '<option>' + o[ i ] + '</option>' );
        }
      }
    </script>
</head>

<body>

<!-- HEADER -->
<c:import url="/WEB-INF/views/includes/header.jsp" />


​
<div class="container mt-3">
<div class="row d-flex justify-content-center">
<div class="col-md-5">​
<div class="shadow p-4 bg-white rounded">

	<h3>헬스장 찾기</h3>
	<br>
	<fieldset>
		<div>
			<form>
				<p>
					<select style="width:200px;" id="s1" onchange="optionChange();">
						<option></option>
						<option value="none" selected="selected" >=== 시/도 ===</option>
						<option value="k">강원도</option>
						<option value="j">경기도</option>
						<option value="l">경상남도</option>
						<option value="m">경상북도</option>
						<option value="d">광주</option>
						<option value="e">대구</option>
						<option value="c">대전</option>
						<option value="a">서울</option>
						<option value="g">세종</option>
						<option value="f">부산</option>
						<option value="h">울산</option>
						<option value="b">인천</option>
						<option value="n">전라남도</option>
						<option value="o">전라북도</option>
						<option value="i">제주</option>
						<option value="p">충청남도</option>
						<option value="q">충청북도</option>        
					</select>
					
					<select style="width:200px;" id="s2">
						<option></option>
					</select>
					<input type="button" value="검색">
    			</p>
    		</form>
    	</div>
    </fieldset>
    
​
	<table class="register01">
		<c:forEach items="${glist}" var="gvo">
			<tr>
				<td>
					<a href="${root }gym_detail?g_no=${gvo.g_no }">
						<c:out value="${gvo.g_name }"/>
					</a>
				</td>
				<td>
					<c:out value="${gvo.g_call }"/>
					<br>
					<c:out value="${gvo.g_addr }"/>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
	
</div></div></div></div> 




<!-- FOOTER -->
<c:import url="/WEB-INF/views/includes/footer.jsp" />



</body>
</html>
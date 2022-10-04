<%@page import="co.sol.main.BVO"%>
<%@page import="co.sol.main.CVO"%>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>부들부들 | 게시글 상세보기</title>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<style type="text/css">
ul {
	list-style: none
}

#check-btn {
	display: none;
}

#check-btn:checked ~ .menubars {
	display: block;
}

.menubars {
	display: none;
}
.comment-update-form{
	display: none;
}
.recomment-update-form{
	display: none;
}
.recomment-insert-form{
	display: none;
}
</style>

</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp" />

	<div class="container" style="margin-top: 120px;">
		<div class="row justify-content-md-center">
			<div class="col-md-10 col-md-10 shadow p-3 mb-5 bg-body rounded">
				<div class="row">
					
					<div class="col text-start">
						<c:choose>
							<c:when test="${bdetail.b_div eq '일지'}">
								<a href="/board/exercise_diary" class="btn btn-outline-primary btn-sm">
								<i class="bi bi-list"></i></a>
							</c:when>

							<c:otherwise>
								<a href="/board/exercise_free"class="btn btn-outline-primary btn-sm">
								<i class="bi bi-list"></i></a>
							</c:otherwise>
						</c:choose>
					</div>
						
					<div class="col text-end">
						<c:choose>
							<c:when test="${bdetail.b_writer eq sessionScope.user.u_id }">
								<a href="modify?b_no=${bdetail.b_no}"class="btn btn-primary btn-sm text-end">수정</a> 
								<a href="delete?b_no=${bdetail.b_no}&b_div=${bdetail.b_div}"class="btn btn-secondary btn-sm text-end delbutton">삭제</a>
							</c:when>
							
							<c:when test="${sessionScope.user.u_id eq 'admin' }">
								<a href="" onclick="reportb()" class="btn btn-secondary btn-sm text-end">신고</a>
								<a href="delete?b_no=${bdetail.b_no}&b_div=${bdetail.b_div}"class="btn btn-secondary btn-sm text-end delbutton">삭제</a>
							</c:when>
							
							<c:when test="${not empty sessionScope.user.u_id }">
								<a href="scrap?b_no=${bdetail.b_no}"class="btn btn-primary btn-sm text-end">스크랩</a>
								<a href="" onclick="reportb()" class="btn btn-secondary btn-sm text-end">신고</a>
							</c:when>						
						</c:choose>
					</div>
				</div>



				<table class="table">
					<thead>
						<tr>
							<th colspan="4"><span style="">
							[<c:out value="${bdetail.b_div }" />]
							</span>
							<c:out value="${bdetail.b_title}" /></th>
						</tr>
						<tr>
							<td><c:out value="${bdetail.b_writer}" /></td>
							<td><fmt:formatDate value="${bdetail.b_udate}" pattern="yyyy. MM. dd HH:mm:ss" /></td>
							<td>조회수</td>
							<td><c:out value="${bdetail.b_vc}" /></td>
						</tr>
						<tr>
							<td colspan="4">내용</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="4"><c:out value="${bdetail.b_con}" escapeXml="false" /></td>
						</tr>
					</tbody>
				</table>
				<!-- 게시글 상세보기 테이블 끝 -->


				<span style="font-size: medium;">
					<i class="bi bi-chat-left-dots"></i> 
					<c:out value="${getList.size() }" />
				</span>
				<hr class="featurette-divider">

				<!-- 댓글 리스트 불러오기 -->
				<ul>
					<c:forEach var="CVO" items="${getList}">
						<c:choose>
							<c:when test="${CVO.c_step==1 }">
								<li>
									<div class="row">
										<div class="col text-start"><!-- 작성자, 수정날짜 표시 -->
											<span style="font-size: small;">
											<c:out value="${CVO.c_writer }" /></span> 
											<span style="font-size: xx-small;">
												<fmt:formatDate value="${CVO.c_udate}" pattern="yyyy. MM. dd HH:mm:ss" />
											</span> 
										</div>
										<!-- 수정, 삭제, 신고 표시 -->
										<c:if test="${CVO.c_writer ne 'unknown' }">
		                                 <div class="col text-end">
		                                    <c:if test="${not empty sessionScope.user.u_id && CVO.c_writer ne sessionScope.user.u_id }">
		                                   		<a href="javascript:" role="button" class="text-decoration-none recomment-insert-link" style="font-size: small;">답글</a>
		                                        <a href="" onclick="reportc(${CVO.c_no})" class="text-decoration-none" style="font-size: small;">신고</a>
		                                    </c:if>
		                                    <c:if test="${CVO.c_writer eq sessionScope.user.u_id }">
		                                    	<a href="javascript:" role="button" class="text-decoration-none recomment-insert-link" style="font-size: small;">답글</a>
		                                        <a href="javascript:" style="font-size: small;" class="comment-update-link text-decoration-none">수정</a>
												<a href="${root}board/deleteComment?b_no=${bdetail.b_no}&c_no=${CVO.c_no}"role="button" class="text-decoration-none delbutton" style="font-size: small;" id="deleteComment">삭제 </a>
		                                    </c:if>
		                                    <c:if test="${sessionScope.user.u_id eq 'admin' }">
		                                       <a href="${root}board/deleteComment?b_no=${bdetail.b_no}&c_no=${CVO.c_no}" role="button" class="text-decoration-none delbutton" style="font-size: small;" id="deleteComment">삭제 </a>
		                                    </c:if>                              
		                                 </div>
		                              </c:if>
		                              	<div style="margin-top:5px;margin-bottom:5px;"><!-- 댓글 내용 표시 -->
											<span style="font-size: small;" class="con">
												${CVO.c_con}
											</span>
										</div>
										<div>
											<c:if test="${not empty sessionScope.user.u_id && CVO.c_writer ne 'unknown' }">
												<form:form class="recomment-insert-form" action="re_insert" modelAttribute="CVO" method="post">
													<span class="" style="font-size: small;">${sessionScope.user.u_id }</span>
													<div class="input-group" id="commentinsert">
													<form:textarea path="c_con" class="form-control" aria-describedby="button-addon2" cssStyle="resize:none;" placeholder="답글을 입력해주세요."></form:textarea>
													<form:hidden path="c_level" value="${CVO.c_level }" />
													<form:hidden path="b_no" value="${bdetail.b_no }" />
													<form:hidden path="c_writer" value="${sessionScope.user.u_id }"/>
													<form:button class="btn btn-primary btn-sm" id="button-addon2 recomment" onclick="">등록</form:button>
													</div>
												</form:form>
											</c:if>
											<c:if test="${CVO.c_writer eq sessionScope.user.u_id }">
												<form class="comment-update-form" action="${root}board/comment_update" method="post">
												<div class="input-group" >
													<input type="hidden" name="c_no" value="${CVO.c_no}" />
													<input type="hidden" name="b_no" value="${bdetail.b_no}" />
													<textarea class="form-control" aria-describedby="button-addon2" name="c_con">${CVO.c_con}</textarea>
													<button class="btn btn-primary btn-sm" id="button-addon2 recomment" type="submit">수정</button>
												</div>
												</form>
											</c:if>
										</div>
									</div>
								</li>
							</c:when>
							<c:when test="${CVO.c_step==2 }">
								<li>
									<div class="row">
										<div class="col text-start"><!-- 작성자, 수정 날짜 표시 -->
											<i class="bi bi-arrow-return-right"></i> 
											<span class="" style="font-size: small;">
											<c:out value="${CVO.c_writer }" /></span> 
											<span class="" style="font-size: xx-small;"><fmt:formatDate value="${CVO.c_udate}" pattern="yyyy. MM. dd HH:mm:ss" /></span>
										</div>
										<!-- 수정, 삭제, 신고 표시 -->
										<c:if test="${CVO.c_writer ne 'unknown' }">
		                                 <div class="col text-end">
		                                    <c:if test="${not empty sessionScope.user.u_id && CVO.c_writer ne sessionScope.user.u_id }">
		                                       <a href="" onclick="reportc(${CVO.c_no})" class="text-decoration-none" style="font-size: small;">신고</a>
		                                    </c:if>
		                                    <c:if test="${CVO.c_writer eq sessionScope.user.u_id }">
		                                       <a href="javascript:" style="font-size: small;" class="recomment-update-link text-decoration-none">수정</a>
		                                       <a href="${root}board/deleteComment?b_no=${bdetail.b_no}&c_no=${CVO.c_no}"role="button" class="text-decoration-none delbutton" style="font-size: small;" id="deleteComment">삭제 </a>
		                                       <div>
		                                    </div>
		                                    </c:if>
		                                    <c:if test="${sessionScope.user.u_id eq 'admin' }">
		                                       <a href="${root}board/deleteComment?b_no=${bdetail.b_no}&c_no=${CVO.c_no}"role="button" class="text-decoration-none delbutton" style="font-size: small;" id="deleteComment">삭제 </a>
		                                       <div>
		                                    </div>
		                                    </c:if>                              
		                                 </div>
		                              </c:if>
		                              <div style="margin-bottom:3px;"><!-- 답글 내용 표시 -->
		                              	&nbsp;&nbsp;&nbsp;&nbsp; 
										<span id="CVOcon" class="recon" style="font-size: small;">
										<c:out value="${CVO.c_con }" /></span>
		                              </div>
										
										<c:if test="${CVO.c_writer eq sessionScope.user.u_id }">
												<form class="recomment-update-form" action="${root}board/comment_update" method="post">
												<div class="input-group" >
													<input type="hidden" name="c_no" value="${CVO.c_no}" />
													<input type="hidden" name="b_no" value="${bdetail.b_no}" />
													<textarea class="form-control" aria-describedby="button-addon2" name="c_con">${CVO.c_con}</textarea>
													<button class="btn btn-primary btn-sm" id="button-addon2 recomment" type="submit">수정</button>
												</div>
												</form>
										</c:if>
									</div>
								</li>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${empty getList }">
						<li>
							<div class="row">
								<div class="col text-start">
									<span class="" style="font-size: medium;">아직 등록된 댓글이 없습니다.<br>첫 댓글을 남겨주세요.
									</span>
								</div>
							</div>
						</li>
					</c:if>
				</ul>



				<hr class="featurette-divider">
				<!-- 댓글 form -->
				<c:if test="${empty sessionScope.user.u_id }">
					<div class="input-group" id="comments">
						<textarea readonly="readonly" class="form-control" aria-describedby="button-addon2" style="resize:none;" placeholder="로그인 후 이용가능합니다."></textarea>
						<button class="btn btn-primary btn-sm" type="submit" id="button-addon2 recomment" disabled>등록</button>
					</div>
				</c:if>
				<c:if test="${not empty sessionScope.user.u_id }">
					<form:form action="c_insert" modelAttribute="CVO" method="post">
						<span class="" style="font-size: small;">${sessionScope.user.u_id }</span>
						<div class="input-group" id="commentinsert">
						<form:textarea path="c_con" class="form-control" aria-describedby="button-addon2" cssStyle="resize:none;" placeholder="댓글을 입력해주세요."></form:textarea>
						<form:hidden path="c_level" value="${getList.size() }" />
						<form:hidden path="b_no" value="${bdetail.b_no }" />
						<form:hidden path="c_writer" value="${sessionScope.user.u_id }"/>
						<form:button class="btn btn-primary btn-sm" id="button-addon2 recomment" onclick="">등록</form:button>
						</div>
					</form:form>
				</c:if>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/includes/footer.jsp" />

	<script type="text/javascript">
		$("#comments textarea").on("click", function(){
			//로그인 여부 체크
			var isLogin=${not empty sessionScope.user.u_id};
			if(isLogin==false){
				var isMove=confirm("로그인 페이지로 이동하시겠습니까?");
				if(isMove){
					location.href="${pageContext.request.contextPath }/user/login";
				}
			}
		});
		
		//댓글 수정관련
		$(".comment-update-link").click(function(){
			$(this)
			.parent().parent().parent()
			.find(".comment-update-form")
			.slideToggle(200);
		});
		
		$(".comment-update-form").on("submit", function(){
			// "private/comment_update.do"
			var url=$(this).attr("action");
			//폼에 작성된 내용을 query 문자열로 읽어온다.
			// num=댓글번호&content=댓글내용
			var data=$(this).serialize();
			//이벤트가 일어난 폼을 선택해서 변수에 담아 놓는다.
			var $this=$(this);
			$.ajax({
				url:url,
				method:"post",
				async:false,
				data:data,
				success:function(responseData){
					// responseData : {isSuccess:true}
					if(responseData.isSuccess){
						//폼을 안보이게 한다 
						$this.slideUp(200);
						//폼에 입력한 내용 읽어오기
						var content=$this.find("textarea").val();
						//pre 요소에 수정 반영하기 
						$this.parent().parent().parent().find(".con").text(content);
					}
				}
			});
		//폼 제출 막기 
		return false;
		});
		
		//대댓글창 수정 관련
		$(".recomment-update-link").click(function(){
			$(this)
			.parent().parent().parent()
			.find(".recomment-update-form")
			.slideToggle(200);
		});
		
		$(".recomment-update-form").on("submit", function(){
			// "private/comment_update.do"
			var url=$(this).attr("action");
			//폼에 작성된 내용을 query 문자열로 읽어온다.
			// num=댓글번호&content=댓글내용
			var data=$(this).serialize();
			//이벤트가 일어난 폼을 선택해서 변수에 담아 놓는다.
			var $this=$(this);
			$.ajax({
				url:url,
				method:"post",
				async:false,
				data:data,
				success:function(responseData){
					// responseData : {isSuccess:true}
					if(responseData.isSuccess){
						//폼을 안보이게 한다 
						$this.slideUp(200);
						//폼에 입력한 내용 읽어오기
						var content=$this.find("textarea").val();
						//pre 요소에 수정 반영하기 
						$this.parent().parent().find(".recon").text(content);
					}
				}
			});
		//폼 제출 막기 
		return false;
		});
		
		//답글작성 관련
		$(".recomment-insert-link").click(function(){
			$(this)
			.parent().parent().parent()
			.find(".recomment-insert-form")
			.slideToggle(200);
		});
		
		//삭제 확인창 띄우기
		$(".delbutton").click(function(){
			var result = confirm("정말 삭제하실건가요?");
			if(result){
			    alert("삭제되었습니다.");
			}else{
			    return false;
			}
		});
		
		//스크랩관련
		$(document).ready(function(){
			var checkscrap="${scrap}";
			if (checkscrap == 'scraped') {
				if(confirm('이미 스크랩한 게시글 입니다. 스크랩을 취소할까요?')) {
					location.href='disscrap?b_no='+${b_no};
				}
			}
			else if (checkscrap == 'unscrap') {
				alert('스크랩 되었습니다.');
			}
			else if (checkscrap == 'disscrap') {
				alert('스크랩이 취소되었습니다.');
			}
		});

		//신고관련
		function reportb(){
			var url='/report/report_board?b_no='+${bdetail.b_no};
			var name='신고하기';
			var pop_x=(window.screen.width / 2) - 260;
			var pop_y=(window.screen.height / 2) - 300;
			var option='width=520, height=500, left='+pop_x+', top='+pop_y;
			window.open(url, name, option);
		}
		function reportc(c_no){
			var url='/report/report_comment?b_no='+${bdetail.b_no}+'&c_no='+c_no;
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

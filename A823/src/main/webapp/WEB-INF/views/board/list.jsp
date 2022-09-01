<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Tables</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">DataTables Advanced Tables</div>
			<button id="btn" type="button">등록 버튼</button>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<table width="100%"
					class="table table-striped table-bordered table-hover"
					id="dataTables-example">
					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>등록날짜</th>
							<th>수정날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="bo">
							<tr class="odd gradeX">
								<td><c:out value="${bo.bnum}" /></td>
								<td><a class="m" href='<c:out value="${bo.bnum}"/>'>
							<c:out value="${bo.title }"/></a></td>
							
								<td>${bo.writer}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${bo.redate}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${bo.updateDate }" /></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				
				<form id="search" action="/board/list" method="get">
					<select name="type">
						<option value="" ${pp.ba.type==null?"selected":""}>-----</option>
						<option value="T" ${pp.ba.type eq 'T'?" selected":""} >제목</option>
						<option value="C" ${pp.ba.type eq 'C'?" selected":""} >내용</option>
						<option value="W" ${pp.ba.type eq 'W'?" selected":""} >작성자</option>
						<option value="TC" ${pp.ba.type eq 'TC'?" selected":""} >제목+내용</option>
						<option value="TCW" ${pp.ba.type eq 'TCW'?" selected":""} >제목+내용+작성자</option>
					</select>
					<input type="text" name="keyword" value='${pp.ba.keyword }'>
					<input type="hidden" name="pageNum" value='${pp.ba.pageNum }'>
					<input type="hidden" name="amount" value='${pp.ba.amount }'>
				
					<button class="btn btn-default">search</button>
				
				</form>
				
				
			
				<div>
					<ul class="pagination">
						<c:if test="${pp.prev}">
							<li class="paginate_button previous"><a href="${pp.start-1 }">Previous</a>
							</li>
						</c:if>
						<c:forEach var="num" begin="${pp.start}"
							end="${pp.end}">
							<li class="paginate_button ${pp.ba.pageNum == num?"active":""} ">
								<a href="${num }">${num}</a>
							</li>
						</c:forEach>
						<c:if test="${pp.next}">
							<li class="paginate_button next"><a href="${pp.end+1 }">Next</a></li>
						</c:if>
					</ul>
				</div>
				
				<!--  end Pagination -->
				<form id='act' action="/board/list" method='get'>
					<input type='hidden' name='pageNum'
						value='${pp.ba.pageNum}'>
						 <input type='hidden'
						name='amount' value='${pp.ba.amount}'>
						<input type='hidden'
						name='type' value='${pp.ba.type}'>
						<input type='hidden'
						name='keyword' value='${pp.ba.keyword}'>
				</form>
			</div>
		</div>
	</div>


	<div class="modal fade" id="my" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">완료됨</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	 
	<script type="text/javascript">
		$(document).ready(function() {

			var r = '<c:out value="${result}"/>';

			check(r);
			function check(r) {

				if (r=== '') {
					return;
				}
				if (parseInt(r) > 0) {
					$(".modal-body").html("글" + parseInt(r) + "번이 등록되었습니다.")
				}
				$("#my").modal("show");

			}

			$("#btn").on("click", function() {
				self.location = "/board/submit";
			});
			
			var act = $("#act");
		    
		    $(".paginate_button a").on("click", function(e) {
		          
		      e.preventDefault(); //기본 동작 제한      
		      
		      var tar= $(this).attr("href");
		      act.find("input[name='pageNum']").val(tar);
		      //<form>태그의 내용 변경후 submit
		    
		      act.submit();
		});
		    
		    $(".m").on("click", function(e){
	            
		        e.preventDefault();
		        
		        var targetBno=$(this).attr("href");
		        
		        act.append("<input type='hidden' name='bnum' value='"+targetBno+"'>'");
		        act.attr("action","/board/get");
		        act.submit();

			
			 
		 });
		    
		    var search = $("#search");
		    $("#search button").on("click",function(e){
		    	e.preventDefault();
		    	console.log("....click");
		    	
		    	search.find("input[name='pageNum']").val(1);
		    	
		    	search.submit();
		    })

		});
	</script>

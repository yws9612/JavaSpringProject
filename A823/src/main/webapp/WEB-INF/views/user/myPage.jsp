<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
            <span>
               <a href="/board/?^p^??b_no=${log.b_no}">${log.b_title}</a>
            </span>
            
            <span>
               ${log.b_writer}
            </span>
         </div>
         
      </div>
   </c:forEach>
</body>
</html>
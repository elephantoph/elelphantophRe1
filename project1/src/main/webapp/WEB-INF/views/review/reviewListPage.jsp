<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 리스트</title>
	<style type="text/css">
		li {list-style: none; float: left; padding: 6px;}
	</style>
	
	<!-- jquery를 불러옵니다. jquery.com download 페이지를 참조해주세요 -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
window.onload = function(){
//전체주소
console.log("url : "+$(location).attr('href'));

//http:, localhost:port번호, index.html ?test=tttt 순으로 나누어져 있습니다.
console.log("url : "+$(location).attr('protocol')+"//"+$(location).attr('host')+""+$(location).attr('pathname')+""+$(location).attr('search'));
}
</script>
</head>
<body>

<form role="form" method="get" action="<c:url value='/review/reviewListPage'/>">

	<c:forEach var="review" items="${reviewList}" varStatus="loop">
	<table>
		<tr>
		<td><a href="<c:url value="/review/edit/${review.reviewSeq}"/>">${review.reviewSeq}</a></td>
		<td>${review.poNum}</td>
		<td>${review.score}</td>
		<td>${review.regDate}</td>
		</tr>
		<tr><td colspan="4">${review.title}</td></tr>
		<tr><td colspan="4">${review.content}</td></tr>
	</table>
	</c:forEach>
	
 <div class="search">
    <select name="searchType" >
      <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
    </select>

    <input type="text" name="keyword" id="keywordInput" />
	
	

  </div>
  
<div>
  <ul>
    <c:if test="${pageMaker.prev}">
    	<li><a href="<c:url value='/review/reviewListPage/${pageMaker.makeSearch(pageMaker.startPage - 1)}'/>">이전</a></li>
    </c:if> 

    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    	<li><a href="<c:url value='/review/reviewListPage/${pageMaker.makeSearch(idx)}'/>">${idx}</a></li>
    </c:forEach>

    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    	<li><a href="<c:url value='/review/reviewListPage/${pageMaker.makeSearch(pageMaker.endPage + 1)}'/>">다음</a></li>
    </c:if> 
    
  </ul>
</div>

<input type="submit" value="검색">
</form>

</body>
</html>
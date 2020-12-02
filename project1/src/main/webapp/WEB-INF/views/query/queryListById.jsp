<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 별 제품문의 리스트</title>
</head>
<body>

<table border="1"><tr><td>문의 번호</td><td>상품명</td><td>문의 제목</td><td>문의 일시</td><td>답변 상태</td></tr>

<c:forEach var="query" items="${queryList}" varStatus="loop">
<c:set var="reply" value="${query.reply }"/>

	<tr>
		<td><a href="<c:url value="/query/queryListById/${query.querySeq}"/>">${query.querySeq}</a></td>
		<td>${query.prodId}</td>
		<td>${query.title}</td>
		<td>${query.regDate}</td>
		<td>
		<c:choose>
			<c:when test="${reply != null }">Y</c:when>
			<c:when test="${reply == null }">N</c:when>
		</c:choose>
		</td>
	</tr>

</c:forEach>
</table>
<a href="<c:url value='/'/>"><button>메인</button></a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 리스트</title>
</head>
<body>
<p>
	<c:forEach var="review" items="${reviewList}" varStatus="loop">
	<table>
		<tr>
		<td><a href="<c:url value="/review/edit/${review.reviewSeq}"/>">${review.reviewSeq}</a></td>
		<td>${review.score}</td>
		<td>${customerVo.cusId}</td>
		<td>${review.regDate}</td>
		</tr>
		<tr><td colspan="4">${review.title}</td></tr>
		<tr><td colspan="4">${review.content}</td></tr>
	</table>
	</c:forEach>

</p>
</body>
</html>
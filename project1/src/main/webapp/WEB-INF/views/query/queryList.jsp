<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 상품문의</title>
</head>
<body>

	<c:forEach var="query" items="${queryList}" varStatus="loop">
	<p>
	<table border="1">
	<c:set var="open" value="${query.open}"/>
	<c:if test="${open == '공개글'}">
		<tr>
		<td>${query.querySeq}</td>
		<td>${query.prodId}</td>
		<td>${query.cusId}</td>
		<td>${query.regDate}</td>
		</tr>
		<tr><td colspan="4">${query.title}</td></tr>
		<tr><td colspan="4">${query.content}</td></tr>
			<c:set var="reply" value="${query.reply}"/>
			<c:if test="${reply != null}">
				<tr><td colspan="4">${query.reply}</td></tr>
			</c:if>
	</c:if>
	</table>
	</p>
	</c:forEach>
	
<a href="<c:url value='/'/>"><button>메인</button></a>
<a href="<c:url value='/query/write'/>"><button>문의글 작성</button></a>
</body>
</html>
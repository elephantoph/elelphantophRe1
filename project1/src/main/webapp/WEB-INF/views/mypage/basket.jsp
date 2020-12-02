<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>

<table border="1">
	<tr><td>썸네일</td><td>제품명</td><td>제품수량</td><td>제품가격</td><td>배송비</td></tr>
	<tr>
	<c:forEach var="cart" items="${cart}" varStatus="loop">
		<td>사진</td>
		<td>제품명</td>
		<td>${cart.poQuantity }</td>
		<td>제품가격</td>
		<td>배송비</td>
	</c:forEach>
	</tr>

</table>


</body>
</html>
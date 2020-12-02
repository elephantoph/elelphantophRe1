<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 작성</title>
</head>
<body>

<h2>문의글 작성</h2>

<form action="<c:url value='/query/write' />" method="post">
<table border="1">

<tr><td>상품명</td><td>${prodId}</td></tr>
<tr><td>회원 ID</td><td>${cusId}</td></tr>
<tr><td>공개 여부</td>
<td>
<select name="open">
	<option value="공개글" selected="selected">공개글</option>
	<option value="비밀글">비밀글</option>
</select>
</td></tr>

<tr><td>문의 제목</td><td><input type="text" name="title"></td></tr>
<tr><td>문의 내용</td><td><input type="text" name="content"></td></tr>

</table>

<input type="hidden" name="prodId" value="${prodId}">
<input type="hidden" name="cusId" value="${cusId}">
<input type="submit" value="제출">
</form>
</body>
</html>
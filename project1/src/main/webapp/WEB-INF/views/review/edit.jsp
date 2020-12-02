<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 수정</title>
</head>
<body>

<h2>리뷰 수정</h2>

<form method="post" action="<c:url value='/review/edit'/>">
<input type="hidden" name="reviewSeq" value=${reviewVo.reviewSeq }>

<h3>별점</h3>
1점<input type="radio" name="score" value="1"><br>
2점<input type="radio" name="score" value="2"><br>
3점<input type="radio" name="score" value="3"><br>
4점<input type="radio" name="score" value="4"><br>
5점<input type="radio" name="score" value="5"><br>
<h3>제목</h3>
<input type="text" name="title" value="${reviewVo.title}"><br>
<h3>내용</h3>
<input type="text" name="content" value="${reviewVo.content}"><br>

<input type="submit" value="리뷰 수정">
</form>

<form method="post" action="<c:url value='/review/delete'/>">
<input type="hidden" name="reviewSeq" value=${reviewVo.reviewSeq }>
<input type="submit" value="리뷰 삭제">
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 리뷰 작성</title>
</head>
<body>

<p>
<h2>주문정보</h2>
</p>
<hr>

<p>
<table>
<tr><td>주문번호</td><td>20201202105</td></tr>
<tr><td>제품명</td><td>점퍼</td></tr>
<tr><td>상품 가격</td><td>10,000원</td></tr>
<tr><td>배송비</td><td>2,500원</td></tr>
<tr><td>총 결제 금액</td><td>12,500원</td></tr>
</table>
<br>
</p>

<p>
<h2>리뷰 작성</h2>

<form method="post" action="<c:url value='/review/write'/>">
<h3>별점</h3>
1점<input type="radio" name="score" value="1"><br>
2점<input type="radio" name="score" value="2"><br>
3점<input type="radio" name="score" value="3"><br>
4점<input type="radio" name="score" value="4"><br>
5점<input type="radio" name="score" value="5" checked="checked"><br>
<h3>제목</h3>&nbsp;
<input type="text" name="title"><br>
<h3>내용</h3>&nbsp;<br>
<input type="text" name="content"><br>

<input type="submit" value="리뷰 완료">
</form>
</p>
<hr>

</body>
</html>
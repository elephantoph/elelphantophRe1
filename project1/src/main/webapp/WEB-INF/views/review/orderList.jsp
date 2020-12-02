<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문목록</title>
</head>
<body>
<h2>주문목록</h2>
<!-- 
<table>
	<tr><td>주문번호</td><td>상품명</td><td>주문금액</td><td>주문수량</td><td>주문상태</td><td>배송방법</td><td>택배사</td><td>운송장번호</td></tr>
	<c:forEach var="po" items="${poVo}" varStatus="loop">
	<table>
		<tr>
		<td>${poVo.poNum}</td>
		<td>${poVo.prodSeq}</td>
		<td>${poVo.billingAmount}*${poVo.poQuantity }</td>
		<td>${poVo.poQuantity }</td>
		<td>${poVo.postAt }</td>
		<td>${poVo.poQuantity }</td>
		<td>${poVo.courier }</td>
		<td>${poVo.shippingNum }</td>
		</tr>
	</table>
	 -->
	 
	<a href="<c:url value='/review/write'/>"><button>리뷰 작성</button></a>
	<a href="<c:url value='/review/edit'/>"><button>리뷰 수정</button></a>
	<!-- 
	</c:forEach>
</table>
 -->



<a href="<c:url value='/'/>"><button>메인으로</button></a>
</body>
</html>
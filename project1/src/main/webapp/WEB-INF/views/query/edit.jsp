<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${queryVo.prodId}번 제품 문의 수정</title>
</head>
<body>

<h2>문의 수정</h2>

<form method="post" action="<c:url value='/query/queryListByID/edit'/>">

<table border="1">
<c:set var="reply" value="${queryVo.reply }"/>
<tr><td>문의 번호</td><td><input type="text" name="querySeq" value="${queryVo.querySeq}" readonly></td></tr>
<tr><td>상품명</td><td><input type="text" name="prodId" value="${queryVo.prodId}" readonly></td></tr>
<tr><td>공개 여부</td><td><input type="text" name="open" value="${queryVo.open}"></td></tr>
<tr><td>문의 제목</td><td><input type="text" name="title" value="${queryVo.title}"></td></tr>
<tr><td>문의 내용</td><td><input type="text" name="content" value="${queryVo.content}"></td></tr>
<tr><td>문의 일시</td><td><input type="text" name="regDate" value="${queryVo.regDate}" readonly></td></tr>


<tr>
	<td>답변</td>
	<td>
	
		<c:choose>
			<c:when test="${reply != null }"><input type="text" name="reply" value="${queryVo.reply}" readonly="readonly"></c:when>
			<c:when test="${reply == null }"><input type="text" name="reply" value="아직 답변이 등록되지 않았습니다." readonly="readonly"></c:when>
		</c:choose>
	</td>
</tr>

</table>
<input type="submit" value="수정하기">
</form>

<a href="<c:url value='/query/queryListById'/>"><button>목록</button></a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${queryVo.prodId}번 제품 문의</title>
</head>
<body>

<h2>문의 상세</h2>
<table border="1">
<c:set var="reply" value="${queryVo.reply }"/>
<tr><td>문의 번호</td><td>${queryVo.querySeq}</td></tr>
<tr><td>상품명</td><td>${queryVo.prodId}</td></tr>
<tr><td>공개 여부</td><td>${queryVo.open}</td></tr>
<tr><td>문의 제목</td><td>${queryVo.title}</td></tr>
<tr><td>문의 내용</td><td>${queryVo.content}</td></tr>
<tr><td>문의 일시</td><td>${queryVo.regDate}</td></tr>

<tr>
	<td>답변</td>
	<td>
		<c:choose>
			<c:when test="${reply != null }">${queryVo.reply}</c:when>
			<c:when test="${reply == null }">아직 답변이 등록되지 않았습니다.</c:when>
		</c:choose>
	</td>
</tr>

</table>

<a href="<c:url value='/query/queryListByID/edit/${queryVo.querySeq}'/>"><button>수정</button></a>
<a href="<c:url value='/query/queryListById/delete/${queryVo.querySeq}'/>"><button>삭제</button></a>
<a href="<c:url value='/query/queryListById'/>"><button>목록</button></a>

</body>
</html>
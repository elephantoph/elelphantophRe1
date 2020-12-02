<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>
<h3>메인 페이지입니다.</h3>
<p>
<a href="<c:url value='/review/orderList'/>"><button>Order List</button></a>
<a href="<c:url value='/review/reviewListPage'/>"><button>Review List (페이징처리)</button></a>
<a href="<c:url value='/test/shit'/>"><button>shit</button></a>
</p>
<p>
<a href="<c:url value='/query/queryList'/>"><button>Query List</button></a>
<a href="<c:url value='/query/queryListById'/>"><button>Query List by Id</button></a>
</p>
<p>
<!-- 
<a href="<c:url value='/form'/>"><button>파일 업로드 테스트</button></a>
 -->
</p>
</body>
</html>
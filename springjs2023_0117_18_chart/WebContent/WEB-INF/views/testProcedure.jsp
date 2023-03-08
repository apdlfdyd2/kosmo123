<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
<c:forEach var="item" items="${list}">
	<tr>
		<td>${item.SANUN}</td>
		<td>${item.SANAME}</td>
		<td>${item.SAPAY}</td>
		<td>${item.DEPTNO}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>
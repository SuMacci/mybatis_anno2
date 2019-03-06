<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getdelete</title>
</head>
<body>
	<h1>삭제하기</h1>
	<c:url value="/getdelete2" var="getdelete"/>
	<form action="${getdelete}" method="post">
	<table>
		<tr>
			<td>이름 </td>
			<td><input type="text" name="s_name"></td>
			<td><input type="submit" value="전송"></td>
		</tr>
	</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getinsert</title>
</head>
<body>
	<c:url value="/getinsert2" var="test"/>
		<form action="${test}" method="post">
			<h1>이름 등록하기</h1>
			<table>
				<tr>
					<td>이름:</td>
					<td><input type="text" name="s_name"></td>
					<td><input type="submit" value="전송"></td>
				</tr>
			</table>
		</form>
</body>
</html>
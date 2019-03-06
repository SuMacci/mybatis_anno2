<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getupdateform</title>
</head>
<body>
	<c:url value="/getupdate2" var="test"/>
		<form action="${test}" method="post">
			<h1>수정하기</h1>
			<table>
				<tr>
					<td>변경할 이름의 번호: </td>
					<td><input type="text" name="s_num"></td>
				</tr>
				<tr>
					<td>이름:</td>
					<td><input type="text" name="s_name"></td>
					<td><input type="submit" value="전송"></td>
				</tr>
			</table>
		</form>
</body>
</html>
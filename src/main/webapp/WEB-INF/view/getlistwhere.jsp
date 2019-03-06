<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getlistwhere</title>
</head>
<body>
	<c:url value="/getlistwhere2" var="test"/>
		<form action="${test}" method="post">
			<table>
				<tr>
					<td>번호: </td>
					<td><input type="text" name="s_num"></td>
					<td><input type="submit" value="전송"></td>
				</tr>
			</table>
		</form>
	
</body>
</html>
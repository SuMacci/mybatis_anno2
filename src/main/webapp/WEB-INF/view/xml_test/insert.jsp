<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xml insert</title>
</head>
<body>
	<c:url value="/get_insert_xml" var="test"/>
		<form action="${test}" method="post">
			<h1>XML insert</h1>
			<table>
				<tr>
					<td>이름:</td>
					<td><input type="text" name="xml_name"></td>
				</tr>
				<tr>
					<td>자기소개:</td>
					<td><input type="text" name="xml_title"></td>
				</tr>
				<tr>
					<td><input type="submit" value="전송"></td>
				</tr>
			</table>
		</form>
</body>
</html>
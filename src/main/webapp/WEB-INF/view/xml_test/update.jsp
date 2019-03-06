<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/get_update_xml" var="test"/>
		<form action="${test}" method="post">
			<h1>XML update</h1>
			<table>
				<tr>
					<td>변경할 글 선택 번호:</td>
					<td><input type="text" name="xml_num"></td>
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
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
	<c:url value="/get_delete_xml" var="test"/>
		<form action="${test}" method="post">
			<h1>XML delete</h1>
			<table>
				<tr>
					<td>삭제할 글 사람이름:</td>
					<td><input type="text" name="xml_name"></td>
				</tr>
				<tr>
					<td><input type="submit" value="전송"></td>
				</tr>
			</table>
		</form>
</body>
</html>
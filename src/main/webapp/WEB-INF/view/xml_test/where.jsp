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
	<c:url value="/get_where_xml" var="test"/>
		<form action="${test}" method="post">
			<h1>XML where</h1>
			<table>
				<tr>
					<td>몇번 째 글 이상 번호 선택:</td>
					<td><input type="text" name="xml_num"></td>
				</tr>
				<tr>
					<td><input type="submit" value="전송"></td>
				</tr>
			</table>
		</form>
</body>
</html>
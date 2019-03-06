<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML</title>
</head>
<body>
	<h1>xml 방식 연습</h1>
	<table>
		<tr>
			<th>회원번호  |  </th>
			<th>회원 이름</th>
		</tr>
			<c:forEach var="i" items="${message}">
			<tr>
				<td>${i.XML_NUM}</td>
				<td>|  ${i.XML_NAME}</td>
				<td>|  ${i.XML_TITLE}</td>
				<td>|  ${i.XML_DATE}</td>
			</tr>
			</c:forEach>
	</table>
	<table>
		<tr>
			<th><a href="${pageContext.request.contextPath}/get_insert_xml">등록 | </a></th>
			<th><a href="${pageContext.request.contextPath}/get_update_xml">수정 | </a></th>
			<th><a href="${pageContext.request.contextPath}/get_delete_xml">삭제 | </a></th>
			<th><a href="${pageContext.request.contextPath}/get_where_xml">WHERE SELECT | </a></th>
			<th><a href="${pageContext.request.contextPath}">돌아가기</a></th>					
		</tr>
	</table>
</body>
</html>
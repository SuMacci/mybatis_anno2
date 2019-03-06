<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get_list</title>
<style>
	.class{
		width: 980px;
		margin: 0px auto;
	}
</style>
</head>
<body>
<div class="class">
	<table>
		<tr>
			<th>회원번호  |  </th>
			<th>회원 이름</th>
		</tr>
			<c:forEach var="i" items="${message}">
			<tr>
				<td>${i.S_NUM}</td>
				<td>|  ${i.S_NAME}</td>
			</tr>
			</c:forEach>
	</table>
	<table>
		<tr>
			<th><h4><a href="${pageContext.request.contextPath}/getinsert">이름등록 | </a></h4></th>
			<th><h4><a href="${pageContext.request.contextPath}/getupdate">수정 | </a></h4></th>
			<th><h4><a href="${pageContext.request.contextPath}/getdelete">삭제 | </a></h4></th>					
			<th><h4><a href="${pageContext.request.contextPath}">돌아가기</a></h4></th>
		</tr>
	</table>
</div>
</body>
</html>
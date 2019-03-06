
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/style/shc_maintop.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>coding</title>
</head>
<body>
	<h1 class="text-center">코딩 실습</h1>
	<div class="container">
	
		<div>
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
				<c:url value="/insert_coding" var="insertcoding"/>
				<form action="${insertcoding}" method="post">
					<table>
						<tr>
							<td>글 제목</td>
							<td>
								<input type="text" size="40px" name="shc_title">
								<input type="hidden" name="shc_num">
							</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" size="20px" name="shc_name"></td>
						</tr>
						<tr>
							<td>글내용</td>
							<td><textarea name="shc_main" rows="10" cols="80"></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="글쓰기"><input type="reset" value="취소"></td>			
						</tr>
					</table>
					</form>
					
				</div>
				<div class="col-sm-2"></div>
				<div class="col-sm-2"></div>
				<div class="col-sm-8"></div>
				<div class="col-sm-2">
					<a href="${pageContext.request.contextPath}"><button class="btn btn-primary">돌아가기</button></a>
				</div>
			</div>
		</div>
	
		<table class="table">
			<tr>
				<th>글 번호</th>
				<th>글 제목</th>
				<th>글 내용</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<c:forEach var="i" items="${coding}">
				<tr>
					<td>${i.SHC_NUM}</td>
					<td>${i.SHC_TITLE}</td>
					<td>${i.SHC_MAIN}</td>
					<td>${i.SHC_NAME}</td>
					<td>${i.SHC_DATE}</td>
				</tr>
			</c:forEach>
		</table>
		
		
	</div>
</body>
</html>
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		<h2>${message}</h2>
	</body>
	
	
	<h1>연습장 BooDuck`s</h1><br>
	<hr>
	<h2>Annotation 연습하기</h2>
	<ul>
		<li><h4><a href="${pageContext.request.contextPath}/get_list">Annotation 연습</a></h4></li>
		<li><h4><a href="${pageContext.request.contextPath}/test_coding">Annotation 프로시져 연습</a></h4></li>
	</ul>
	<hr>
	<h2>XML 연습하기</h2>
	<ul>
		<li><h4><a href="${pageContext.request.contextPath}/get_list_xml">XML 연습</a></h4></li>
	</ul>
	
</html>

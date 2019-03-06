<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.aa{
		width: 60px;
	}
	.aaaa{
		text-align:center;
	}
	.bb{
		width: 600px;
	}
	.cc{
		width: 200px;
	}
	.dd{
		width: 200px;
	}
</style>
</head>
<body>
	<h1>QNA TEST</h1>
	
	<table border="1px solid black" cellspacing = "0">
		<tr>
			<th class = "aa">글 번호</th>
			<th class = "bb">글 제목</th>
			<th class = "cc">글 작성일</th>
			<th class = "dd">작성자 ip</th>
		</tr>
	<c:forEach var="i" items="${list}">
		<tr>
			<td><p class = "aaaa">${i.Q_NUM}</p></td>
		<td>
		<!-- 여백처리 -->
		
		<c:forEach begin="1" end="${i.Q_MARGIN}" items="${list}">
			&nbsp;&nbsp;
		</c:forEach>
		<c:if test="${i.Q_MARGIN > 0}">
			   ┖
		</c:if>
		<a href="qnacontroller?cmd=view&q_num=${i.Q_NUM}">${i.Q_TITLE}</a>
		</td>
		<td>${i.Q_DATE}</td>
		<td>${i.Q_IP}</td>
		</tr>
	</c:forEach>
		
	</table>
	<!-- 페이지 표시영역 -->
	<ul>
		<li>
			<!-- 페이징 번호 --> 
			<c:if test="${group_spage == 1}">
				[<a href="qnacontroller?cmd=list&pnum=1">PREV</a>]
			</c:if>
			<c:if test="${group_spage > 1}">
				[<a href="qnacontroller?cmd=list&pnum=${group_spage-1}">PREV</a>]
			</c:if>
			<c:forEach begin="${group_spage}"
				end="${group_epage}" var="i" step="1">

				<!-- 현재페이지는 링크 없음 -->
				<c:if test="${i == param.pnum}">${i}</c:if>
					<c:if test="${i != param.pnum}">
					[<a	href="qnacontroller?cmd=list&pnum=${i}">${i}</a>] 
   					</c:if>
			</c:forEach> <!-- 페이징 그룹 다음 --> 
				
				<c:if test="${group_epage < all_epage}">
					[<a href="qnacontroller?cmd=list&pnum=${group_epage+1}">NEXT</a>]	
				</c:if>
		</li>
	</ul>
	
</body>
</html>
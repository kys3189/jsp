<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<body>

	<%
		PostVO post = (PostVO)request.getAttribute("post");
	%>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
	</table>
	
	<table>
		<tr>
			<th><%=post.getId() %></th>
			<th><%=post.getPostTitle() %></th>
			<th><%=post.getPostContent() %></th>
		</tr>
	</table>
	<div>
		<a href="List.post">게시판으로 가기</a>
		<a href="update.post?id=<%=post.getId() %>">게시글 수정</a>
		<a href="delete.post?id=<%=post.getId() %>">게시글 삭제</a>
	</div>

</body>
</html>
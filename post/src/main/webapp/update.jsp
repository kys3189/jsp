<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	
	<%
		PostVO post = (PostVO)request.getAttribute("post");
	%>
	
	<form action="update-ok.post" method="post">
		<label>
			<input type="hidden" name="id" value="<%=post.getId() %>" />
		</label>
		<label>
			<input type="text" name="postTitle" value="<%=post.getPostTitle() %>"/>
		</label>
		<label>
			<input type="text" name="postContent" value="<%=post.getPostContent() %>"/>
		</label>
		<button>게시글 수정</button>
	</form>
	
</body>
</html>
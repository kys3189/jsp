<%@page import="com.app.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
	</table>
	<%
		List<PostVO> posts = (List<PostVO>)request.getAttribute("posts");
		for(PostVO postVO : posts){
	%>
	<table>
		<tr>
			<th><%=postVO.getId() %></th>
			<th>
				<a href="read.post?id=<%=postVO.getId() %>">
					<%=postVO.getPostTitle() %>
				</a>
			</th>
			<th><%=postVO.getPostContent() %></th>
		</tr>
	</table>
	<%
		}
	%>
	<a href="write.jsp">게시글 작성</a>
</body>
</html>
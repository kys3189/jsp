<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>

	<form action="write-ok.post" method="post">
		<label>
			<input type="text" name="postTitle" placeholder="제목"/>
		</label>
		<label>
			<input type="text" name="postContent" placeholder="내용"/>
		</label>
		<button>게시글 작성</button>
	</form>

</body>
</html>
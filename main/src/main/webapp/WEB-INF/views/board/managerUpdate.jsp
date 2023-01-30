<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<link type="text/css" rel="stylesheet" href="./resources/style/board.css">
</head>
<body>
<div id="boardTb" align="center">
	<h2>공지글 수정</h2>
	<form action="managerUpdate" method="post">
		<input type="hidden" name="command" value="managerUpdate">
		<input type="hidden" name="MgNum" value="${mVo.MgNum }">
		
		<table>
			<tr>
				<th>닉네임</th>
				<td><input type="text" name="MgName" value="${mVo.MgName}"  readonly></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="${mVo.title}" required>*필수</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="15" cols="70" name="content" value="${mVo.content}"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">수정하기</button>
					<button type="button" onclick="location.href='boardDetail'">취소하기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
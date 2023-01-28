<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link type="text/css" rel="stylesheet" href="../board/style/board.css">
</head>
<body>
<div id="userBoard" align="center">
	<h2>공지사항</h2>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		<c:forEach items="${manager}" var="manager">
			<tr>
				<td>${manager.num}</td>
				<td><a href="managerDetail?MgNum=${manager.MgNum}">${manager.title}</a></td>
				<td>${manager.MgName}</td>
				<td> <fmt:formatDate value="${manager.wirteDate}"/> </td>
				<td>${board.readCount}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5" style="border: white; text-align: right">
				<a href="managerWrite">게시글 등록</a>
			</td>
		</tr>
	</table>
</html>
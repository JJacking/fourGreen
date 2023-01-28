<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<link type="text/css" rel="stylesheet" href="../board/style/board.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <div id="userBoard">
      <h2>공지사항</h2>
      <table>
        <tr>
          <th>제목</th>
          <td colspan="5">${mVo.title}</td>
        </tr>
        <tr>
          <th>닉네임</th>
          <td>${mVo.MgName}</td>
          <th>작성일</th>
          <td>${mVo.wirteDate}</td>
          <th>조회수</th>
          <td>${mVo.readCount}</td>
        </tr>
        <tr>
          <th>내용</th>
          <td colspan="5">${mVo.content}</td>
        </tr>
        <tr>
          	<td colspan="6" style="border: white; text-align:center">
		          <button type="button" onclick="location.href='managerUpdate?MgNum=${mVo.MgNum}'">
		         	 게시글 수정</button>
		          <button type="button" onclick="removeCheck(MgNum)">
		         	게시글 삭제</button>
		          <button type="button" onclick="location.href='boardList'">목록 보기</button>
        	</td>
        </tr>
      </table>
     </div>
  </body>
  </html>
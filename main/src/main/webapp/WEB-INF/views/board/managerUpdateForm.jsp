<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 등록</title>
<link type="text/css" rel="stylesheet" href="./resources/style/board.css">
</head>
<body>
  <form action="managerUpdate" method="post">
  <input type="hidden" name="comment" value="managerUpdate">
  <input type="hidden" name="MgNum" value="${mVo.MgNum}">
    <table class="boardTb">
      <tr>
        <th>닉네임</th>
        <td><input type="text" name="MgName" value="${mVo.MgName}" required>*필수</td>
      </tr>
      <tr>
        <th>글제목</th>
        <td><input type="text" name="title" value="${mVo.title}" required>*필수</td>
      </tr>
      <tr>
        <th>본문</th>
        <td><textarea rows="15" cols="70" name="content">${mVo.content}</textarea></td>
      </tr>
      <tr>
        <td colspan="2">
          <button type="submit">수정하기</button>
          <button type="reset">다시 작성</button>
          <button type="button" onclick="location.href='managerBoardList'">목록으로</button>
        </td>
      </tr>
      
    </table>
  </form>
  </body>
  </html>
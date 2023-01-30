<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link type="text/css" rel="stylesheet" href="./resources/style/board.css">
</head>
<body>
<div class="nav">
  <div><h2><a href="#">logo</a></h2></div>
     <ul class="nav-menu">
      <li><a href="#">물품보기</a></li>
      <li><a href="#">물품등록</a></li>
      <li>
        <a href="#">게시판</a>
          <ul id="sub-menu">
            <li><a href="/board/managerBoardList">공지사항</a></li>
            <li><a href="/board/boardList">자유게시판</a></li>
          </ul>
      </li>
      <li><a href="#">고객센터</a></li>
     </ul>
    <%--  <c:if test="${}"> --%>
        <div class="loginBtn">
            <button type="button">로그인</button>
            <button type="button">회원가입</button>
        </div>
    <%-- </c:if> --%>
   <%--  <c:if test="${! }">
        <p>${}님 환영합니다</p>
        <p><a href="#">내정보</a></p>
        <p><a href="#">포인트충전/조회</a></p>
        <p><a href="#">낙찰내역</a></p>
        <p><a href="#">응찰내역</a></p>
    </c:if> --%>
</div>
<div id="boardTb" align="center">
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
			<td>${manager.MgNum}</td>
			<td><a href="managerDetail?MgNum=${manager.MgNum}">${manager.title}</a></td>
			<td>${manager.MgName}</td>
			<td> <fmt:formatDate value="${manager.wirteDate}"/> </td>
			<td>${manager.readCount}</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5" style="border: white; text-align: right">
				<a href="managerWrite">게시글 등록</a>
			</td>
		</tr>
	</table>
</html>
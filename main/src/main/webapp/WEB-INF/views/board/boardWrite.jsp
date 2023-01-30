<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 등록</title>
<link type="text/css" rel="stylesheet" href="./resources/style/board.css">
<style>
  #boardTb input{
    width: 100%;
    height: 23px;
  }
  .writeBtn{
    text-align: center;
  }
</style>
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
  <form action="boardWrite" method="post">
  <input type="hidden" name="command" value="boardWrite">
  <div id="boardTb">
    <table>
      <tr>
        <th>닉네임</th>
        <td><input type="text" name="nickName" placeholder="필수" required></td>
      </tr>
      <tr>
        <th>이메일</th>
        <td><input type="email" name="email" placeholder="필수" required></td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td><input type="password" name="pass" placeholder="필수" required></td>
      </tr>
      <tr>
        <th>글제목</th>
        <td><input type="text" name="title" placeholder="필수" required></td>
      </tr>
      <tr>
        <th>본문</th>
        <td><textarea rows="15" style="width: 100%;" name="content"></textarea></td>
      </tr>
    </table>  
      <div class="writeBtn">
          <button type="submit">글작성</button>
          <button type="reset">다시 작성</button>
          <button type="button" onclick="location.href='boardList'">목록으로</button>
      </div>    
    </div>
  </form>
  
  </body>
  </html>
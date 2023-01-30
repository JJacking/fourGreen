<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   
<title>메인페이지</title>
<link type="text/css" rel="stylesheet" href="./resources/style/board.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
  
  <hr>
<header>
  <div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <ul id="imgholder" class="imgs">
        <li><img src="resources/img/ex11.jpg"></li>
        <li><img src="resources/img/ex22.jpg"></li>
        <li><img src="resources/img/ex33.jpg"></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
    </div>
  </div>
</header>
<hr>
<div class="main">
  <div class="img-board">
    <div class="popular-board">
      <h2>인기</h2>
      <hr>
      <br>
      <ul>
        <li>
          <img src="resources/img/XL.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex01.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex02.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex03.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
      </ul>
    </div>
    <div class="new-board">
      <h2>NEW</h2>
      <hr>
      <br>
      <ul>
        <li>
          <img src="resources/img/ex04.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex04.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex05.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex05.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
      </ul>
    </div>
  </div>
  <hr>
  <br>
  <br>
  <div class="managerBoard">
    <h2>공지사항</h2>
    <hr>
    <br>
    <table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:forEach items="${manager}" var="manager">
			<tr>
				<td>${manager.num}</td>
				<td><a href="managerDetail?MgNum=${manager.MgNum}">${manager.title}</a></td>
				<td>${manager.MgName}</td>
				<td>${manager.readCount}</td>
			</tr>
		</c:forEach>
	</table>
  </div>
  <div class="userBoard">
    <h2>자유게시판</h2>
    <hr>
    <br>
      <table class="List">
        <tr>
          <th>번호</th>
          <th colspan="3">제목</th>
          <th>작성자</th>
        </tr>
        <c:forEach items="${list}" var="board">
          <tr>
            <td>${board.num}</td>
            <td colspan="3"><a href="boardDetail?num=${board.num}">${board.title}</a></td>
            <td>${board.nickName}</td>
          </tr>
        </c:forEach>
      </table>
  </div>
</div>
<hr>
<footer>
  <div class="footer">
    <a href="https://github.com/JJacking/lastPj.git" style="text-decoration: none; list-style: none; color: white;" >@github 저장소 바로가기</a>
  </div>
</footer>
</body>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   
<title>메인페이지</title>
<link type="text/css" rel="stylesheet" href="./resources/style/board.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
  
  <hr>
<header>
  <div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <ul id="imgholder" class="imgs">
        <li><img src="resources/img/ex11.jpg"></li>
        <li><img src="resources/img/ex22.jpg"></li>
        <li><img src="resources/img/ex33.jpg"></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
    </div>
  </div>
</header>
<hr>
<div class="main">
  <div class="img-board">
    <div class="popular-board">
      <h2>인기</h2>
      <hr>
      <br>
      <ul>
        <li>
          <img src="resources/img/XL.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex01.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex02.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex03.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
      </ul>
    </div>
    <div class="new-board">
      <h2>NEW</h2>
      <hr>
      <br>
      <ul>
        <li>
          <img src="resources/img/ex04.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex04.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex05.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
        <li>
          <img src="resources/img/ex05.jpg">
          <h4>상품명</h4>
          <p>가격</p>
        </li>
      </ul>
    </div>
  </div>
  <hr>
  <br>
  <br>
  <div class="managerBoard">
    <h2>공지사항</h2>
    <hr>
    <br>
    <table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:forEach items="${manager}" var="manager">
			<tr>
				<td>${manager.num}</td>
				<td><a href="managerDetail?MgNum=${manager.MgNum}">${manager.title}</a></td>
				<td>${manager.MgName}</td>
				<td>${manager.readCount}</td>
			</tr>
		</c:forEach>
	</table>
  </div>
  <div class="userBoard">
    <h2>자유게시판</h2>
    <hr>
    <br>
      <table class="List">
        <tr>
          <th>번호</th>
          <th colspan="3">제목</th>
          <th>작성자</th>
        </tr>
        <c:forEach items="${list}" var="board">
          <tr>
            <td>${board.num}</td>
            <td colspan="3"><a href="boardDetail?num=${board.num}">${board.title}</a></td>
            <td>${board.nickName}</td>
          </tr>
        </c:forEach>
      </table>
  </div>
</div>
<hr>
<footer>
  <div class="footer">
    <a href="https://github.com/JJacking/lastPj.git" style="text-decoration: none; list-style: none; color: white;" >@github 저장소 바로가기</a>
  </div>
</footer>
</body>

>>>>>>> c07268bb383b7f35c83e9f26579692aea86ebbfc
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signIn</title>
<title>로그인</title>
<link type="text/css" rel="stylesheet" href="./resources/style/board.css">

  <style>
    *{
      margin: auto;
      padding: auto;
    }

    #head{
      text-align: left;
      width: 60%;
      margin-top: 15%;
      margin-left: 30%;
      color: lightskyblue;
    }
    
    .loginForm{
      width: 60%;
      height: 200px;
      background-color: rgb(209, 231, 209);
      border-radius: 10px;
      margin-top: 10%;
      margin-left: 30%;
      margin-right: 30%;
      padding: 0px;
      line-height: 50px;
      text-align: center;
    }

    .loginForm table{
    }
    .loginForm input{
      height: 20px;
      font-size: 15px;
    }

    .loginForm a{
      text-decoration: none;
      color: black;
    }
.logbtn{
  padding: 20px;
  
}

  </style>
</head>
<body>
<div class="nav">
  <div><h2><a href="/">logo</a></h2></div>
     <ul class="nav-menu">
      <li><a href="product">물품보기</a></li>
      <li><a href="newAuction">물품등록</a></li>
      <li>
        <a href="#">게시판</a>
          <ul id="sub-menu">
            <li><a href="managerBoardList">공지사항</a></li>
            <li><a href="boardList">자유게시판</a></li>
          </ul>
      </li>
      <li><a href="#">고객센터</a></li>
     </ul>
   	<c:if test="${empty user}"> 
        <div class="loginBtn">
            <button type="button" onclick="location.href='signInForm'">로그인</button>
            <button type="button" onclick="location.href='signUp'">회원가입</button>
        </div>
    </c:if>
   <c:if test="${not empty user }">
        <p>${user.nickname}님 환영합니다</p>
        <p><a href="signOut">로그아웃</a></p>
        <p><a href="mypage">내정보</a></p>
        <p><a href="charge">포인트충전/조회</a></p>
    </c:if>
</div>
 <div id="head">
   <h2>로그인페이지</h2>
   <hr>
 </div>
 <div class="loginForm">
 <form action="signInCheck" method="post">
	<table>  
	 	<tr> 
	 		<td>아이디 : <input type="email" name="id" required="required"></td>
       <td rowspan="2"><button type="submit" class="logbtn">로그인</button></td>
	 	</tr>
	 	<tr> 
	 		<td>비밀번호 : <input type="password" name="password" required="required"></td>
	 	</tr>
	 	
	 	<tr>
	 		<td>
	 			<a href="searchId">아이디 찾기</a>
	 			<a href="searchPassword">비밀번호 찾기</a>
	 		</td>
	 	</tr>
	</table>
</form>
 </div>
	
	<c:if test="${not empty msg }">
		<script type="text/javascript">
			alert('${msg}');
		</script>
	</c:if>
<footer>
  <div class="footer">
    <a href="https://github.com/JJacking/fourGreen.git" style="text-decoration: none; list-style: none; color: white; width:100%;" >@github 저장소 바로가기</a>
  </div>
</footer>

</body>

</html>
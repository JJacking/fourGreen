<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signIn</title>
</head>
<body>
	<form action="signInCheck" method="post">
		<table border="1">
		 	<tr> 
		 		<td>아이디 : <input type="email" name="id" required="required"></td>
		 	</tr>
		 	<tr> 
		 		<td>비밀번호 : <input type="password" name="password" required="required"></td>
		 	</tr>
		 	<tr>
		 		<td>
		 			<button type="submit">로그인</button>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td>
		 			<a href="searchId">아이디 찾기</a>
		 			<a href="searchPassword">비밀번호 찾기</a>
		 		</td>
		 	</tr>
		</table>
	</form>
	
	<c:if test="${not empty msg }">
		<script type="text/javascript">
			alert('${msg}');
		</script>
	</c:if>
</body>
</html>
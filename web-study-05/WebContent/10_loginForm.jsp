<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
<form method = "post" action = "10_testLogin.jsp">
	<label for = "userid">아이디 : </label>
	<input type = "text" name = "id" id = "userid"><br>
	
	<label for = "userpwd"> password : </label>
	<input type = "password" name = "pwd" id = "userpwd"><br>
	
	<input type = "submit" value = "Login">
</form>

</body>
</html>
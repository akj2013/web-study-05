<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
<% // 스크립트릿
session.invalidate();
%>
<script>
	alert("로그아웃되었습니다.");
	location.href="10_loginForm.jsp";
</script>
</body>
</html>
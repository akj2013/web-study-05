<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
<% // 스크립트릿
session.setAttribute("id","pink");
session.setAttribute("pwd","123");
session.setAttribute("age","20");
%>
<h3> 세션 설정 </h3>
</body>
</html>
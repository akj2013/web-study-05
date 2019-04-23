<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 저장된 값 얻어오기</title>
</head>
<body>
<h3> 세션 값 얻어오기 </h3>
<% // 스크립트릿
session.setAttribute("id","pink");
session.setAttribute("pwd","123");
session.setAttribute("age","20");

String id = (String)session.getAttribute("id"); // String 형 변수에 저장하려면 cast 연산자로 명시적인 형 변환을 해야 한다.
String pwd = (String)session.getAttribute("pwd");
String age = (String)session.getAttribute("age");
%>
id : <%= id %> <br>
pwd : <%= pwd %> <br>
age : <%= age %><br>
</body>
</html>
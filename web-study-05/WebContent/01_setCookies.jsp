<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 생성하는 JSP</title>
</head>
<body>
<% //스크립트릿
// 1. Cookie 객체 생성
Cookie c = new Cookie("id","pink");
// 2. 유효기간 설정.
c.setMaxAge(365*24*60*60); // 초 단위로 시간을 설정해서 1년동안 유요하도록 하였다.
// 3. 클라이언트에 쿠키 전송.
response.addCookie(c); // response 객체의 addCookie() 메소드로 Cookie 클래스로 선언된 객체인 c를 설정하면 클라이언트의 일정 폴더에 c 쿠키의 정보를 기록하게 됩니다.
// 4. 쿠키를 생성하여 클라이언트에 전송.

Cookie d = new Cookie("pwd","123");
Cookie e = new Cookie("age","20");
d.setMaxAge(365*24*60*60);
e.setMaxAge(365*24*60*60);
response.addCookie(d);
response.addCookie(e);
%>
<h3> 쿠키 설정 </h3>
</body>
</html>
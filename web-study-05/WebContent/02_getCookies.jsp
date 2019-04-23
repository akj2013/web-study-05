<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설정된 모든 쿠키를 얻어와 출력하기</title>
</head>
<body>
<h3> 클라이언트로부터 얻어온 Cookies </h3>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies) {
		out.println(c.getName() + " : " + c.getValue()+"<br>");
	}
	// 쿠키의 이름을 알아내기 위해서는 getName()
	// 쿠키에 설정된 값을 알아내기 위해서는 getValue(), 쿠키에 설정된 값을 문자열 형태로 알려준다.
%>
</body>
</html>
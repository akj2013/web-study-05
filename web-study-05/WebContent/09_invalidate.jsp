<%@ page import = "java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% // 스크립트릿
session.setAttribute("s_name2","세션에 저장된 두번째 값");

session.setAttribute("s_name1","세션에 저장된 첫번째 값");
session.setAttribute("s_name3","세션에 저장된 세번째 값");
out.print("<h3> >> 세션값을 삭제하기 전 << </h3>");
Enumeration names;
names = session.getAttributeNames();
while(names.hasMoreElements()) {
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>");
}

// 설정된 세션의 값들을 모두 사라지도록 합니다.
session.invalidate();

out.print("<hr><h3> >> 세션값을 삭제한 후 << </h3>");
out.print(" Q : 과연 세션 아이디가 유효할까요? <br>");
if(request.isRequestedSessionIdValid()==true)
	out.print(" A : 세션 아이디가 유효합니다. <hr>");
else
	out.print(" A : 세션 아이디가 유효하지 않습니다. <hr>");
%>
</body>
</html>
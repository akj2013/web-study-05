<%@ page import = "java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 제거하기</title>
</head>
<body>
<% // 스크립트릿
session.setAttribute("s_name1","세션에 첫번째 저장된 값");
session.setAttribute("s_name2","세선에 두번째 저장된 값");
session.setAttribute("s_name3","세션에 세번째 저장된 값");

out.print("<h3> >> 세션값을 삭제하기 전 << </h3>");
Enumeration names;
names=session.getAttributeNames();
// 반복문을 돌면서 Enumeration 객체에 세션들이 존재하는지를 검사합니다. 존재하면 해당 세션에 저장된 이름과 값을 뽑아 와서 출력하는 것을 반복합니다.
while(names.hasMoreElements()) {
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>");
}
// 이름을 지정하여 세션에 저장된 객체를 제거합니다.
session.removeAttribute("s_name2");

out.print("<hr><h3> >> 세션값을 삭제한 후 << </h3>");
names=session.getAttributeNames();
while(names.hasMoreElements()) {
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>");
}
%>
</body>
</html>
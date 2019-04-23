<%@ page import = "java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 설정된 모든 값 얻어오기</title>
</head>
<body>
<h3> 세션에 설정된 모든 값 얻어오기 </h3>
<% 
session.setAttribute("id","pink");
session.setAttribute("pwd","123");
session.setAttribute("age","20");

Enumeration names=session.getAttributeNames(); // 컬렉션 프레임워크에 속하는 Enumeration은 제너릭 클래스로 원소(구성원)의 자료 타입을 언급하여 Enumeration<String>과 같이 표현해야 하지만
// 굳이 원소의 자료 타입을 밝힐 필요가 없을 경우에는 예전 방식대로 Enumeration과 같이 표현해도 된다.
while(names.hasMoreElements()) { // 현재 뽑아올 데이터가 있는지를 검사하여 있으면 true, 없으면 false 값을 되돌려 준다.
	String name = names.nextElement().toString();
	String value = session.getAttribute(name).toString();
	out.println(name + " : " + value + "<br>"); // 문자열 형태로 저장된 세션 이름과 세션 값을 출력합니다.
	out.println("while문");
}
out.println("END");
%>
</body>
</html>
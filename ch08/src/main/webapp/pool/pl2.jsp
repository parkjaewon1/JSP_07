<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch08.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	// 자바클래스를 생성해서 사용
	TestCall tc = new TestCall();
	tc.setEmpno(7369);
	String result = tc.call();
%>
이름 : <%=result %>
</body>
</html>
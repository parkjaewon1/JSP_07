<%@page import="java.sql.*,javax.sql.*,javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	Connection conn = null;
	Context ctx = new InitialContext();
	DataSource ds =(DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	if (conn != null) {
		out.println("연결 성공");
		conn.close();
	} else {
		out.println("연결 실패");
	}
%>
</body>
</html>
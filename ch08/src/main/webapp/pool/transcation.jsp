<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.sql.*,javax.sql.*,javax.naming.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String sql = "insert into dept values(21,'울보팀','전주')";
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OravleDB");
	Connection conn = ds.getConnection();
	conn.setAutoCommit(false); // default = true
	Statement stmt = conn.createStatement();
	int result = stmt.executeUpdate(sql);
	if(result>0){
		out.println("입력 성공");
		conn.commit();
	}else {
		out.println("입력 실패");
		conn.rollback();
	}
	conn.setAutoCommit(true);
	stmt.close();
	conn.close();
%>
</body>
</html>
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
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	Connection conn = ds.getConnection();
	String sql = "{?=call employ_ename(?)}";
	CallableStatement cs = conn.prepareCall(sql);
	cs.setInt(2,7566);
	cs.registerOutParameter(1, Types.VARCHAR);
	cs.execute();
	out.println("이름:" +cs.getString(1));
	cs.close();
	conn.close();
%>
</body>
</html>
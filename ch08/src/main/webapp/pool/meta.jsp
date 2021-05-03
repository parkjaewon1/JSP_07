<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,javax.sql.*,javax.naming.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	String sql = "select * from emp";
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	Connection conn = ds.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	ResultSetMetaData rsmd = rs.getMetaData();
	for(int i = 1; i <= rsmd.getColumnCount(); i++) {
		out.println(i+"번쨰 컬럼 : "+rsmd.getColumnName(i)+"<br>");
		out.println(i+"번째 컬럼 타입 : "+rsmd.getColumnTypeName(i)+"<p>");
	}
	rs.close();  pstmt.close(); conn.close();
%>
</body>
</html>
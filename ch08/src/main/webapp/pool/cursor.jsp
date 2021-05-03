<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,javax.sql.*,javax.naming.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	String sql = "select * from emp";
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	Connection conn = ds.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql,
			ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = pstmt.executeQuery();
	rs.last();
	out.println(rs.getInt("empno")+", "+rs.getString("ename")+"<br>");
	rs.first();
	out.println(rs.getInt("empno")+", "+rs.getString("ename")+"<br>");
	rs.absolute(3);
	out.println(rs.getInt("empno")+", "+rs.getString("ename")+"<br>");
	rs.close(); pstmt.close(); conn.close();
%>
</body>
</html>
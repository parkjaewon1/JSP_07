<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.util.*,ch08.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	List<Dept> list = new ArrayList<Dept>();
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://127.0.0.1:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "root", "wo1041819");
	String sql = "select * from dept order by deptno";
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()) {
		Dept dept = new Dept();
		dept.setDeptno(rs.getInt(1));  // 읽은 순서 deptno
		dept.setDname(rs.getString(2));
		dept.setLoc(rs.getString(3));
		list.add(dept);  // list에 데이터가 담긴 dept객체를 추가
	}
	request.setAttribute("list", list);
	rs.close(); stmt.close(); conn.close();
%>
<jsp:forward page="selectResult.jsp"></jsp:forward>
</body>
</html>
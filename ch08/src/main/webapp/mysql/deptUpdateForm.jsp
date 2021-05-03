<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,ch08.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"  href="../common.css"></head><body>
<%	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://127.0.0.1:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	String sql = "select * from dept where deptno="+deptno;
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url,"root","wo1041819");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	Dept dept = new Dept();
	dept.setDeptno(deptno);
	dept.setDname(rs.getString("dname"));
	dept.setLoc(rs.getString("loc"));
	pageContext.setAttribute("dept", dept);
	rs.close();  stmt.close();  conn.close();
%>
<form action="deptUpdate.jsp" method="post">
<table><caption>부서 정보 수정</caption>
	<tr><th>부서코드</th><td><input type="number" name="deptno" 
		value="${dept.deptno }" readonly="readonly"></td></tr>
	<tr><th>부서명</th><td><input type="text" name="dname" required="required"
		autofocus="autofocus" value="${dept.dname }"></td></tr>
	<tr><th>근무지</th><td><input type="text" name="loc" required="required"
		value="${dept.loc }"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>
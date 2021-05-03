<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://127.0.0.1:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	Connection conn = null;  Statement stmt = null;
	String sql = "delete from dept where deptno="+deptno;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "root","wo1041819");
		stmt = conn.createStatement();
		int result = stmt.executeUpdate(sql);
		if (result > 0) {  %>
<script type="text/javascript">
	alert("삭제 되었습니다");
	location.href="select.jsp";
</script>			
<% 		} else out.println("삭제 실패");
	}catch(Exception e) {
%>
<script type="text/javascript">
	alert("에궁 ! 삭제 실패");
	history.go(-1);
</script>	
<%  } finally { 
		stmt.close(); conn.close();
    }
%>
</body>
</html>
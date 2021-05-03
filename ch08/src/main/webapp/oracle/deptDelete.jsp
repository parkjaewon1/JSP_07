<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String sql = "delete from dept where deptno="+deptno;
	Connection conn = null;  
	Statement stmt = null;
	try{ Class.forName(driver);
		 conn = DriverManager.getConnection(url, "scott","tiger");
		 stmt = conn.createStatement();
		 int result = stmt.executeUpdate(sql);
		 if (result > 0) { %>
	<script type="text/javascript">
		alert("대박 삭제 됐네");
		location.href="select.jsp";
	</script>		 
<%		 }else out.println("삭제 실패");
	}catch(Exception e ) {
%>
	<script type="text/javascript">
		alert("쪽박 삭제 실패");
		history.go(-1);
	</script>
<%  } finally { 
		stmt.close();  conn.close();
    }
 %>
</body>
</html>
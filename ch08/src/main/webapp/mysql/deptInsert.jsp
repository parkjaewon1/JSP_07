<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	int deptno=Integer.parseInt(request.getParameter("deptno"));
	String dname = request.getParameter("dname");
	String loc = request.getParameter("loc");
	String sql = "insert into dept values(?, ?, ?)";
	Connection conn  = null;
	PreparedStatement pstmt = null;
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://127.0.0.1:3306/test?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
	try {
		Class.forName(driver);
		conn= DriverManager.getConnection(url, "root", "wo1041819");
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, deptno);
		pstmt.setString(2, dname);
		pstmt.setString(3, loc);
		int result = pstmt.executeUpdate();
		if (result > 0) {      %>
<script type="text/javascript">
	alert("입력 성공 대박 !!");
	location.href="select.jsp";
</script>
<%		} else out.println("입력 실패");
	}catch(Exception e){       %>
<script type="text/javascript">
	alert("에효 ! 안되네 !!");
	history.go(-1);   // back();
</script>
<%		
	}finally{
		pstmt.close(); conn.close();
	}
%>
</body>
</html>
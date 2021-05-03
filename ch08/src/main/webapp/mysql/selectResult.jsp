<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,ch08.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("../common.css");</style></head><body>
<table><caption>부서 목록</caption>
	<tr><th>부서코드</th><th>부서명</th><th>근무지</th><th>수정</th><th>삭제</th></tr> 
<%	List<Dept> list = (List<Dept>)request.getAttribute("list");
	for(Dept dept:list) { %>
	<tr><td><%=dept.getDeptno() %></td>
		<td><%=dept.getDname() %></td>
		<td><%=dept.getLoc() %></td>
		<td>수정</td>
		<td>삭제</td></tr>
<%  } %>
</table>
<a>부서정보 입력</a>
</body>
</html>
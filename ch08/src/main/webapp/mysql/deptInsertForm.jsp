<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("../common.css");</style>
</head><body>
<form action="deptInsert.jsp">
<table><caption>부서 정보 입력</caption>
	<tr><th>부서코드</th><td><input type="number" name="deptno" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>부서명</th><td><input type="text" name="dname" required="required"></td></tr>
	<tr><th>근무지</th><td><input type="text" name="loc" required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>
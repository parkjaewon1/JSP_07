<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("../common.css");</style>
</head><body>
<table><caption>부서 목록</caption>
	<tr><th>부서코드</th><th>부서명</th><th>근무지</th><th>수정</th><th>삭제</th></tr>
<c:forEach var="dept" items="${list }">
	<tr><td>${dept.deptno }</td>
		<td>${dept.dname }</td>
		<td>${dept.loc }</td>
		<td>수정</td>
		<td>삭제</td>
</c:forEach>
</table>
<a>부서정보 입력</a>
</body>
</html>
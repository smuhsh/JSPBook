<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 목록</title>
</head>
<body>
	<form method = "post" action = "sql02_process.jsp">
		<p>아이디 :<input type = "text" name = "id">
		<p>이름 :<input type = "text" name = "name">
		<p>비밀번호 :<input type = "text" name = "passwd">
		<p><input type = "submit" value = "저장">
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String passwd = request.getParameter("passwd");
	%>
    <sql:setDataSource var="dataSource" 
    	url="jdbc:oracle:thin:@localhost:1521:xe" 
    	driver="oracle.jdbc.OracleDriver" 
    	user="java" password="oracle"/>
    <sql:update dataSource="${dataSource}" var="resultSet">
    	INSERT INTO student(id, name, passwd) VALUES(?,?,?)
    	<sql:param value="<%=id %>"/>
    	<sql:param value="<%=name %>"/>
    	<sql:param value="<%=passwd %>"/>
    </sql:update>
    <c:import var="url" url="sql01.jsp"/>
    ${url}	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INSERT SQL</title>
</head>
<body>
	<%@ include file = "dbcon.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String passwd = request.getParameter("passwd");
		
		Statement stmt = null;

		try{
			String sql = "INSERT INTO student (id, name, passwd) VALUES ('"+ id +"','" + name + "','" + passwd + "')";
			stmt = conn.createStatement();
			stmt.executeQuery(sql);
			out.println("student table 입력 성공");
		} catch (SQLException ex){
			out.println("student table 입력 실패했습니다.<br>");
			out.println("SQLException :"+ex.getMessage());
		} finally {
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
	%>
</body>
</html>
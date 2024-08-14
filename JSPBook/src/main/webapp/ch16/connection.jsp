<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "java";
			String password = "oracle";
			
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("데이터베이스 연결 성공!!");
		} catch (SQLException ex){
			out.println("데이터베이스 연결 실패했습니다.<br>");
			out.println("SQLException :"+ex.getMessage());
		} finally {
			if(conn != null){
				conn.close();
			}
		}
	%>
</body>
</html>
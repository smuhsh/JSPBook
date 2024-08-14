<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SELECT SQL</title>
</head>
<body>
	<%@ include file = "dbcon.jsp"%>
	<table width = "300" border = "1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
		<%
			ResultSet rs = null;
			Statement stmt = null;
			
			try{
				String sql = "SELECT * FROM student";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					String id = rs.getString("id");
					String name = rs.getString("name");
					String passwd = rs.getString("passwd");
		%>
		<tr>
			<td><%=id %></td>
			<td><%=name %></td>
			<td><%=passwd %></td>
		</tr>
		<%
				}
			} catch (SQLException ex){
				out.println("데이터베이스 연결 실패했습니다.<br>");
				out.println("SQLException :"+ex.getMessage());
			} finally {
				if(rs != null){
					rs.close();
				}
				if(stmt != null){
					stmt.close();
				}
				if(conn != null){
					conn.close();
				}
			}
		%>
	</table>
</body>
</html>
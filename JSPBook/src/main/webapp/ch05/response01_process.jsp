<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(userId.equals("관리자")&&passwd.equals("1234")){
			response.sendRedirect("response01_success.jsp");
		} else {
			response.sendRedirect("response01_failed.jsp");			
		}
	%>
</body>
</html>
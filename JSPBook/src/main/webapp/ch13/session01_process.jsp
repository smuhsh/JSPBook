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
		
		if(userId.equals("admin")&&passwd.equals("1234")){
			session.setAttribute("userId",userId);
			session.setAttribute("passwd",passwd);
			out.println("세션 설정이 성공<br>");
			out.println(userId + "님 환영합니다.!!!<br>");
		}
		else {
			out.println("세션 설정이 실패!!!");
		}
		
	%>

</body>
</html>
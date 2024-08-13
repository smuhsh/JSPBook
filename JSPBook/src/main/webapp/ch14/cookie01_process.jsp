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
		String userId = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		if(userId.equals("admin")&&passwd.equals("1234")){
			Cookie cookie_id = new Cookie("userId", userId);
			Cookie cookie_passwd = new Cookie("userId", passwd);
			response.addCookie(cookie_id);
			response.addCookie(cookie_passwd);
			out.println("쿠키 생성 성공<br>");
			out.println(userId + "님 환영합니다.");
		} else {
			out.println("쿠키 생성 실패<br>");
		}
	%>
</body>
</html>
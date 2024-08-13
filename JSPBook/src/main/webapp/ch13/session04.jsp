<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>----------세션을 삭제하기 전 ----------</h4>
	<%
		String userId = (String) session.getAttribute("userId");
		String passwd = (String) session.getAttribute("passwd");
		out.println("설정된 세션의 속성 이름 userId:"+userId + "<br>");
		out.println("설정된 세션의 속성 값 passwd:"+passwd);
		
		if (request.isRequestedSessionIdValid() == true){
			out.println("세션이 유효합니다.");
		} else {
			out.println("세션이 유효하지 않습니다.");
		}
		/* session.removeAttribute("userId"); */
		session.invalidate();
	%>
	<h4>----------세션을 삭제한 후 ----------</h4>
	<% 
		if (request.isRequestedSessionIdValid() == true){
			out.println("세션이 유효합니다.");
		} else {
			out.println("세션이 유효하지 않습니다.");
		}
/* 		userId = (String) session.getAttribute("userId");
		passwd = (String) session.getAttribute("passwd");
		out.println("설정된 세션의 속성 이름 userId:"+userId + "<br>");
		out.println("설정된 세션의 속성 값 passwd:"+passwd); */
	%>
	
</body>
</html>
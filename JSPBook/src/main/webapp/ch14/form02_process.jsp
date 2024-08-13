<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 파라미터 인코딩 설정 (파라미터를 읽기 전에 설정해야 함)
		request.setCharacterEncoding("UTF-8");
		
		Enumeration<String> enums = request.getParameterNames();
		Map<String, String[]> map = request.getParameterMap();
		
		while (enums.hasMoreElements()){
			String paramName = enums.nextElement();
			String[] values = map.get(paramName);
			out.println(paramName + ": ");
			
			if (values != null) {
				for (String value : values) {
					out.println(value + "<br>");
				}
			}
		}

		// 개별 파라미터 읽기
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");

	%>
</body>
</html>

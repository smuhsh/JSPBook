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
		String [] fruits = request.getParameterValues("fruit");
	
		if (fruits != null && fruits.length > 0){
			out.println("선택한 과일"+"<br>");
			for(String fruit : fruits){
				out.println(fruit + "<br>");
			}
		} 
		else {
			out.println("선택한 과일이 없네요");	
		}
	%>
</body>
</html>
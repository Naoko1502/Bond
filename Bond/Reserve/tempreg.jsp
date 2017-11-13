<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
register
<%
	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
 %>
${param.username }
${param.email }
${param.nationality }
</body>
</html>
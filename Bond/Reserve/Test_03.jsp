<%@page import="cn.bond.bean.Bond_Contact"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div id="d1">d1</div>
<div id="d2"><img id="con_img1"/></div>
<%
		Bond_Contact contact = new Bond_Contact();
		contact.setBname("temp");
		Map<Integer,String> map = new HashMap<Integer,String>();
		map.put(1,"http://localhost/Bond/timg77UWWWM4.jpg");
		map.put(2,"b");
		request.getSession().setAttribute("m", map);
		
		Map<Integer,Bond_Contact> m = new HashMap<Integer,Bond_Contact>();
		m.put(1,contact);
		request.getSession().setAttribute("m2", m);
		int count = 1;
%>
<textarea rows="20" cols="40" id="c"></textarea>
<input type="button" onclick="d()"/>
<script>
	function d(){
		var x = document.getElementById("c").value;
		alert(x);
	}
</script>
</body>
</html>
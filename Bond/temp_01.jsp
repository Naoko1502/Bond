<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style>
	#search{
		visibility:hidden;
	}
</style>
</head>
<body>
<h1 id="m">${param.mark}</h1>

<script>
	var x = document.getElementById("m").innerHTML;
	alert(x);
</script>
<c:set value="" var="${param.mark}"></c:set>
<!--
	if(x != ""){
		document.getElementById("search").style.visibility = "visible";
		alert("!=null");
	}else{
		alert("x=null");
	}
 -->
</body>
</html>
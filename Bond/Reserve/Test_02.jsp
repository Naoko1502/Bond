<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	*{margin:0;padding:0;}
	#del_alert{
		visibility:hidden;
		width:300px;
		height:230px;
		background-color:#fff;
		box-shadow:0 0 30px;
	}
	#del_yes{
		display:block;
		float:left;
		align:bottom;
		width:150px;
		height:50px;
		text-align:center;
		line-height:50px;
		font-weight:bold;
		cursor:pointer;
	}
	#del_no{
		display:block;
		float:right;
		align:bottom;
		width:150px;
		height:50px;
		text-align:center;
		line-height:50px;
		font-weight:bold;
		cursor:pointer;
	}
	#del_button{
		margin:0 auto;
		width:80px;
		height:35px;
		line-height:35px;
		text-align:center;
		font-weight:bold;
		cursor:pointer;
		background-color:#7f97a4;
	}
</style>
<script>
	function del_acc(){
		document.getElementById("del_alert").style.visibility = "visible";
	}
	function del_yes(){
		document.getElementById("del_form").submit();
	}
	function del_no(){
		document.getElementById("del_alert").style.visibility = "hidden";
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="del_button" onclick="del_acc()">注销</div>
	
	
	<div id="del_alert">
		<form action="/Bond/Reserve/delTemp.jsp" method="post" id="del_form">
			<span id="del_yes" onclick="del_yes()">确定</span> <span id="del_no" onclick="del_no()">取消</span>
		</form>
	</div>
</body>
</html>
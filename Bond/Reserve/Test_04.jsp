<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style>
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
	
/*------------------------------------------------------------------------------------------------------*/

	#accdel_box{
		visibility:hidden;
		width:440px;
		height:130px;
		background-color:#fbfbfb;
		border-radius:5px;
		box-shadow:0 0 8px gray;
	}
	#del_yes{
		float:left;
		width:65px;
		height:25px;
		background-color:#5a97ff;
		color:#fff;
		font-size:14px;
		text-align:center;
		line-height:25px;
		font-weight:bold;
		cursor:pointer;
		font-family:华文细黑;
		border:2px double #5885EC;
		border-radius:2px;
		margin-top:80px;
		margin-left:50px;
	}
	#del_no{
		float:right;
		width:65px;
		height:25px;
		background-color:#5a97ff;
		color:#fff;
		font-size:14px;
		text-align:center;
		line-height:25px;
		font-weight:bold;
		cursor:pointer;
		font-family:华文细黑;
		border:2px double #5885EC;
		border-radius:2px;
		margin-right:50px;
		margin-top:62px;
	}
	#del_msg{
		position:relative;
		left:-100px;
		top:15px;
		font-family:华文细黑;
		font-size:14px;
	}
</style>
</head>
<body>
	<div id="del_button" onclick="del_acc()">注销</div>

	<div id="accdel_box">
		<span id="del_msg">localhost显示: 你确定要注销此账户吗？</span>
		<div id="del_yes" class="delitem" onclick="delTrue()">确定</div>
		<div id="del_no" class="delitem" onclick="delFalse()">取消</div>
	</div>
	
<script>
	function c(){
		document.getElementById("accdel_box").style.visibility = "visible";
	}
	function del_acc(){
		//document.getElementById("accdel_box").style.visibility = "visible";
		window.alert = c();
	}
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style>
	#img_box img{
		width:160px;
		height:160px;
		background-color:pink;
		text-align:center;
		line-height:240px;
		font-size:25px;
	}
	#imgpath{
		visibility:hidden;
	}
</style>
<script>
	function change_img(){
		var x = document.getElementById("img_file").value;
		document.getElementById("bgimg").src = x;
		document.getElementById("imgpath").value = x;
	}
</script>
</head>
<body>
	<div id="img_box">
		<img id="bgimg" src="upload.png"/>
	</div>
	<input type="file" id="img_file"/>
	<button onclick="change_img()">确认上传</button>
	
	
	<br/>
	<form action="/Bond/temp02" method="post">
		<input type="text" name="name"/><br/>
		<input type="text" name="imgpath" id="imgpath"/>
		<input type="submit" value="确认"/>
	</form>
	
	${imgfile }
</body>
</html>
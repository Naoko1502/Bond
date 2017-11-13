<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style>
	#uimg{
		width:180px;
		height:180px;
	}
</style>
</head>
<body>
	<!-- -
		用户信息:<br/>
	姓名:${uname }<br/>
	<img id="uimg" src="${imgfile }"/>
	 -->
	 <form action="/Bond/temp04">
	 	<span id="shobby" class="rsl">爱好</span><br/>
	 <input type="checkbox" name="hobby" value="看电影"/><span>看电影</span>
	 <input type="checkbox" name="hobby" value="听音乐"/><span>听音乐</span>
	 <input type="checkbox" name="hobby" value="看小说"/><span>看小说</span>
	 <input type="submit" value="确定"/>
	 </form>
	 
</body>
</html>
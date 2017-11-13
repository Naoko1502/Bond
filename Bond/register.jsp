<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bond Register</title>
<style>
	body{
		background:url("Login_Background.png") no-repeat;
		background-size:1366px 685px;
	}
	#logo{
		display:block;
		font-weight:bold;
		font-size:35px;
		color:#7f97a4;
		font-family: 华文细黑;
		text-decoration:none;
		margin-left:25px;
		margin-top:20px;
	}
	#logo:visited{color:#7f97a4;}
    #logo:hover{cursor:pointer;}
	#errmsg{
   	  font-family: 幼圆;
      width:240px;
      height:32px;
      background-color:#fff;
      opacity:0;
      position:fixed;
      left:136px;
      bottom:614px;
      text-align:center;
      line-height:32px;
      font-size:13px;
      font-weight:bold;
      letter-spacing:4px;
      border-radius:5px;
   }
   #hr{
		margin-top:5px;
	}
	#form{
		margin-top:60px;
		margin-left:130px;
	}
	.in{
       	width:230px;
       	height:40px;
       	background-color:transparent;
       	border:1px solid #ffffff;
       	text-indent:2em;
       	margin-bottom:30px;
       	border-radius:5px;
    }
    #reg{
       	width:50px;
      	height:28px;
       	font-family: 幼圆;
       	background-color:#7f97a4;
       	font-size:15px;
       	border:0px;
       	color:#fff;
       	font-weight:bold;
       	margin-left:83px;
       	margin-top:9px;
       	border-radius:3px;
       	box-shadow:0 0 8px #afafaf;
    }
   #copyright{
	   text-align:center;
	   margin-top:90px;
	   color:#676767;
   }
</style>
<script>
	function checkIn(){
		var name = document.getElementById("name").value;
		var password = document.getElementById("password").value;
		var age = document.getElementById("age").value;
		var email = document.getElementById("email").value;
		var birthday = document.getElementById("birthday").value;
		var reg1 = /^\w+$/;
		var agereg = /^\d+$/;
		var reg2 = /^\d+-\d+-\d+$/;
		var mail = /^\w+@\w+.(com|org|net|cn)$/;
		if(name == ""){
			document.getElementById("errmsg").innerHTML = "名字不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!reg1.test(name)){
			document.getElementById("errmsg").innerHTML = "名字中不能存在中文或空格";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(name.length > 15){
			document.getElementById("errmsg").innerHTML = "名字的长度不能超过15位";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(password == ""){
			document.getElementById("errmsg").innerHTML = "密码不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(!reg1.test(password)){
			document.getElementById("errmsg").innerHTML = "密码中不能存在空格";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(password.length > 15){
			document.getElementById("errmsg").innerHTML = "密码的长度不能超过15位";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if(age == ""){
			document.getElementById("errmsg").innerHTML = "年龄不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					}
				},200);
			return false;
		}
		if((!agereg.test(age)) || age < 0 || age > 150){
			document.getElementById("errmsg").innerHTML = "年龄不正确";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		}
		if(email == ""){
			document.getElementById("errmsg").innerHTML = "邮箱不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		}
		if(!mail.test(email)){
			document.getElementById("errmsg").innerHTML = "邮箱格式不正确";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
		if(birthday == ""){
			document.getElementById("errmsg").innerHTML = "生日不能为空";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		}
		if(!reg2.test(birthday)){
			document.getElementById("errmsg").innerHTML = "生日格式不正确 (年-月-日)";
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
			return false;
		};
	}
	function changeColor(x){
         x.style.cursor = "pointer";
         x.style.color = "#af7340";
    }
    function colorModoru(x){
         x.style.color = "#fff";
    }
    function colorModoru_logo(x){
         x.style.color = "#7f97a4";
    }
    function checkErr(){
    	var msg = document.getElementById("errmsg").innerHTML;
		var reg = /^\W+$/;
		if(reg.test(msg)){
			var i = 1;
			var inter = setInterval(
				function(){
					var n = document.getElementById('errmsg');
					n.style.opacity = i;
					i -= 0.1;
					if(i < 0){
						clearInterval(inter);
					};
				},200);
		};
    }
</script>
</head>
<body onload="checkErr()">
<a href="/Bond/login.jsp" id="logo" onmouseover="changeColor(this)" onmouseout="colorModoru_logo(this)">Bond</a>
<div id="errmsg">${NameIsNull}${PasswordIsNull}${AgeIsNull}${EmailIsNull}${BirthdayIsNull}${NameAlreadyExist}${Error}</div>
<%
	request.getSession().removeAttribute("NameIsNull");
	request.getSession().removeAttribute("PasswordIsNull");
	request.getSession().removeAttribute("AgeIsNull");
	request.getSession().removeAttribute("EmailIsNull");
	request.getSession().removeAttribute("BirthdayIsNull");
	request.getSession().removeAttribute("NameAlreadyExist");
	request.getSession().removeAttribute("Error");
 %>
<hr id="hr"/>
<form id="form" action="/Bond/register" method="post" onsubmit="return checkIn()">
	<input id="name" class="in" type="text" name="username" placeholder="username" title="username"/><br/>
	<input id="password" class="in" type="password" name="password" placeholder="password" title="password"/><br/>
	<input id="age" class="in" type="text" name="age" placeholder="age" title="age"/><br/>
	<input id="email" class="in" type="text" name="email" placeholder="e-mail" title="e-mail"/><br/>
	<input id="birthday" class="in" type="text" name="birthday" placeholder="birthday" title="birthday"/><br/>
	<input id="reg" type="submit" value="注册" onmouseover="changeColor(this)" onmouseout="colorModoru(this)"/>
</form>
<p id="copyright">
	Copyright &copy;2017.10 Bond.net All Rights Reserved. 
</p>
</body>
</html>

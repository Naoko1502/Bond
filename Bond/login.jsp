<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bond Login</title>
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
	#hr{
		margin-top:5px;
	}
	#logo:visited{color:#7f97a4;}
    #logo:hover{cursor:pointer;}
	#form{
		margin-top:60px;
		margin-left:130px;
	}
	.in1,.in2,.in3{
        	width:230px;
        	height:40px;
        	background-color:transparent;
        	border:1px solid #ffffff;
        	text-indent:2em;
        	margin-bottom:40px;
        	border-radius:5px;
          }
          #img{
          	width:180px;
          	height:48px;
          	margin-left:25px;
          	margin-top:-11px;
          	border-radius:7px;
          	border:1px solid #7f97a4;
          }
         #sub{
         	width:50px;
        	height:28px;
         	font-family: 幼圆;
         	background-color:#7f97a4;
         	font-size:15px;
         	border:0px;
         	color:#fff;
         	font-weight:bold;
         	margin-left:43px;
         	margin-top:34px;
         	border-radius:3px;
         	box-shadow:0 0 8px #afafaf;
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
         	margin-left:46px;
         	margin-top:34px;
         	border-radius:3px;
         	box-shadow:0 0 8px #afafaf;
         }
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
         #copyright{
        	text-align:center;
        	margin-top:144px;
        	color:#676767;
        }
</style>
<script>
	function check(){
		var name = document.getElementById("name").value;
		var password = document.getElementById("password").value;
		var code = document.getElementById("verifycode").value;
		var reg = /^\w+$/;
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
		if(!reg.test(name)){
			document.getElementById("errmsg").innerHTML = "用户名不正确";
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
		if(!reg.test(password)){
			document.getElementById("errmsg").innerHTML = "密码不正确";
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
		if(code == ""){
			document.getElementById("errmsg").innerHTML = "验证码不能为空";
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
		if(!reg.test(code)){
			document.getElementById("errmsg").innerHTML = "验证码不正确";
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
		return true;
	}
	function change(){
		document.getElementById("img").src = "/Bond/verify?time=" + new Date().getTime();
	}
	 function changeColor(x){
            x.style.cursor = "pointer";
            x.style.color = "#af7340";
        }
     function colorModoru(x){
         x.style.color = "#fff";
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
					}
				},200);
		}
     }
     function regaction(){
     	document.getElementById("form").action = "/Bond/register.jsp";
     	document.getElementById("form").submit();
     }
</script>
</head>
<body onload="checkErr()">
<a id="logo" href="/Bond/login.jsp">Bond</a>
<div id="errmsg">${LoginError}${NameIsNull}${PasswordIsNull}${CodeIsNull}${CodeIsError}${NameNotFound}${PasswordIsError}${RegSuccess}</div>
<%
	request.getSession().removeAttribute("NameIsNull");
	request.getSession().removeAttribute("PasswordIsNull");
	request.getSession().removeAttribute("CodeIsNull");
	request.getSession().removeAttribute("CodeIsError");
	request.getSession().removeAttribute("NameNotFound");
	request.getSession().removeAttribute("PasswordIsError");
	request.getSession().removeAttribute("RegSuccess");
	request.getSession().removeAttribute("LoginError");
 %>
<hr id="hr"/>
	<form id="form" action="/Bond/login" method="post" onsubmit="return check()">
		<input id="name" class="in1" type="text" name="username" placeholder="username" title="username"/><br/>
		<input id="password" class="in2" type="password" name="password" placeholder="password" title="password"/><br/>
		<input id="verifycode" class="in3" type="text" name="verifycode" placeholder="verifycode" title="verifycode"/><br/>
		<img id="img" src="/Bond/verify" onclick="change()"/><br/>
		<input id="sub" type="submit" value="登录" onmouseover="changeColor(this)" onmouseout="colorModoru(this)"/>
		<input id="reg" type="button" value="注册" onmouseover="changeColor(this)" onmouseout="colorModoru(this)" onclick="regaction()"/>
	</form>
<p id="copyright">
	Copyright &copy;2017.10 Bond.net All Rights Reserved. 
</p>
</body>
</html>

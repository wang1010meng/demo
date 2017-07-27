<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 
     
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript"> 
window.onload = function(){
	var input = document.getElementById("loginBox").getElementsByTagName("input");
	for(i=0; i<input.length; i++) {
		var type = input[i].getAttribute("type");
		if(type == "text" || type == "password") {
			input[i].onfocus = function(){
				this.className += " input-text-over";
			}
			input[i].onblur = function(){
				this.className = this.className.replace(/input-text-over/, "");
			}
		} else if(type == "submit") {
			input[i].onmouseover = function(){
				this.className += " input-submit-over";
			}
			input[i].onmouseout = function(){
				this.className = this.className.replace(/input-button-over/, "");
			}
		}
	}
	
}
</script>
</head>
<body>
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="login" class="wrap">
	<div class="main">
		<div class="corner"></div>
		<div class="introduce">
			<h2>博通教育</h2>
			<p>网上调查系统...</p>
		</div>
		<div class="login">
			<h2>用户登录</h2>
			<form method="post" action="inactionlogin">
				<dl id="loginBox">
					<dt>用户名：</dt>
					<dd><input type="text" class="input-text" name="user.username"  value="tom"/></dd>
					<dt>密　码：</dt>
					<dd><input type="password" class="input-text" name="user.vupassword"  value="123"/></dd>
					<dt></dt>
					<dd><input type="submit" class="input-button" name="submit" value="登录" /> <a href="reg.jsp">新用户注册</a></dd>
				</dl>
			</form>
			<div class="error"></div>
		</div>
	</div>
</div>
<div class="wrap">
</div>
<div id="footer" class="wrap">
	博通教育 &copy; 版权所有
</div>
</body>
</html>


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
<title>注   册</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script src="js/jquery-1.8.3.js" type="text/javascript"></script>
<script src="js/testajax.js" type="text/javascript"></script>
<script type="text/javascript">
	var bl=false;
	var b2=false;
	$(function(){
		$("#username").blur(function(){
			if($("#username").val()==""){
			b1=false;   $("#nameerr").html("用户名不能为空！");
			}else{
			$.getJSON('testjson?user.username='+$("#username").val(), function(result) {
	                if(result=="false"){
	                	b1=false;
	                  $("#nameerr").html("用户名已被注册！");
	                 }else{
	                 b1=true;
	                 $("#nameerr").html("有户名可用！");
	                 }
	        });
			
			}
	        if(b1&&b2)
			$("input[type=submit]").attr("disabled",false);
		});
		$("#pwd").blur(function(){
		if($("#repwd").val()!=""){
			if($("#pwd").val()==$("#repwd").val()){
			b2=true;$("#pwderr").html("");
			}else{
			$("#pwderr").html("2次密码不一致！");
			b2=false;}
			if(b1&&b2)
			$("input[type=submit]").attr("disabled",false);}
		});
		$("#repwd").blur(function(){
			if($("#pwd").val()==$("#repwd").val()){
			b2=true;
			$("#pwderr").html("");
			}else{
			b2=false;
			$("#pwderr").html("2次密码不一致！");
			}
			if(b1&&b2)
			$("input[type=submit]").attr("disabled",false);
		});
		$("input[type=submit]").click(function(){});
		
	});
</script>
</head>
<body>
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="search">
	<!--  
		<form method="get" action="index.html">
			<input type="text" name="keywords" class="input-text" /><input type="submit" name="submit" class="input-button" value="" />
		</form>
	-->	
	</div>
</div>
<div id="register" class="box">
	<h2>新用户注册</h2>
	<div class="content">
	   <form method="post" action="inactionreg">
			<dl>
				<dt>用户名：</dt>
				<dd><input id="username"type="text" class="input-text" name="user.username" value=""/><span id="nameerr"></span></dd>
				<dt>密码：</dt>
				<dd><input type="password" id="pwd" class="input-text pwd" name="user.vupassword" value=""/></dd>
				<dt>确认密码：</dt>
				<dd><input type="password" id="repwd"class="input-text pwd" name="confirmPassword" value=""/><span id="pwderr"></span></dd>
				<dt></dt>
				<dd><input type="submit"  disabled="disabled" class="input-button" name="submit" value="" /></dd>
			</dl>
		</form>
		<div id="nameerr" class="error"></div>
	</div>
</div>
<div id="footer" class="wrap">
	博通教育 &copy; 版权所有
</div>
</body>
</html>


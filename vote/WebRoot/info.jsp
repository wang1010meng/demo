<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'info.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" >
   		$(function(){
   			var a=$("[name=a]").val();
   			if("register"==a){
   				$("span").html("注册成功<br/>2秒后跳回登录页面");
   				if(confirm("注册成功，2秒后跳回登录页面"))
   					setTimeout("location='login.jsp'", 2000);
   			}else if("deldept"==a){
   				$("span").html("删除的部门下面有人员，不可删除，请清空人员再删除<br/>2秒后跳回部门列表页面");
   				if(confirm("删除的部门下面有人员，不可删除，请清空人员再删除"))
   					setTimeout("location='showdept.jsp'", 2000);
   			}else{
   				location="index.jsp";
   			}
   		});
   </script>
  </head>
  
  <body>
  <p><span></span></p>
   <input name="a" type="hidden" value='<s:property value="result"/>'/>
   
  </body>
</html>

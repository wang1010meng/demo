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
<title>投票列表</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
 
 
 
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="profile">
		您好<s:property value="#session.user.username"/><s:if test="#session.user.vustatus==1">，管理员大人</s:if>
		<span class="return"><a href="inactionlist">返回列表</a></span>
		<s:if test="#session.user.vustatus==1">
		<span class="addnew"><a href="add.jsp">添加新投票</a></span>
		<span class="modify"><a href="#">维护</a></span>
		</s:if>
		<span class="return"><a href="inactionlogoff">注销</a></span>
	</div>
	<div class="search">
		<form method="post" action="Subject!search.action">
			<input type="text" name="keywords" class="input-text" value=""/><input type="submit" name="submit" class="input-button" value="" />
		</form>
	</div>
</div>
 
<div id="vote" class="wrap">
	<h2>投票列表</h2>
	<ul class="list">
	
		<s:iterator value="votesublist" status="sta">
		<li  <s:if test="#sta.index%2==0">class="odd"</s:if> >
			<h4>				
				<a href="inactioncheck?vsid=<s:property value="vsid"/>"><s:property value="vstitle"/></a>
			</h4>
			<div class="join">
				<s:if test="#session.user.vustatus==1"><a href="inactionmod?vsid=<s:property value="vsid"/>">修改</a></s:if>
				<s:if test="#session.user.vustatus==0"><a href="inactionvote?vsid=<s:property value="vsid"/>">我要参与</a>	</s:if>
				</div>
			<p class="info">共有 <s:property value="voteoptions.size()"/> 个选项，已有<s:property value="voteitems.size()"/>  个网友参与了投票。</p>
		</li>
		</s:iterator>
		
	</ul>
</div>
<div id="footer" class="wrap">
	博通教育 &copy; 版权所有
</div>
</body>
</html>


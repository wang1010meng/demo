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
<title>发布新投票</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript"> 
var isIE = !!document.all;
	var i=2;
function AddOption()
{
	var voteoptions = document.getElementById("voteoptions");
	var _p = document.createElement("p");
	var _input = document.createElement("input");
	_input.type = "text";
	_input.className = "input-text";
	_input.setAttribute("name", "subject.voteoptions["+i+"].vooption");
	//alert("subject.voteoptions["+i+"].vooption");
	var _input1 = document.createElement("input");
	_input1.type = "hidden";
	_input1.setAttribute("name", "subject.voteoptions["+i+"].voorder");
	_input1.setAttribute("value", i);
	_p.appendChild(_input);
	_p.appendChild(_input1);
	var _a = document.createElement("a");
	_a.className = "del";
	_a.setAttribute("href", "javascript:;");
	if(isIE) {
		_a.attachEvent("onclick", DelOption);
	} else {
		_a.addEventListener("click", DelOption, false);
	}
	_a.appendChild(document.createTextNode("删除"));
	_p.appendChild(_a);
	voteoptions.appendChild(_p);
	i++;
}
function DelOption(e)
{
	if(!e) e = window.event;
	var a = e.srcElement || e.target;
	var obj = a.parentNode;
	obj.parentNode.removeChild(obj);
}
</script>
</head>
<body>
 
 
 
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="profile">
		您好<s:property value="#session.user.username"/>，管理员
		<span class="return"><a href="inactionlist">返回列表</a></span>
		<span class="addnew"><a href="add.jsp">添加新投票</a></span>
		<span class="modify"><a href="Subject!modify.action">维护</a></span>
		
	</div>
	<div class="search">
		<form method="post" action="Subject!search.action">
			<input type="text" name="keywords" class="input-text" value=""/><input type="submit" name="submit" class="input-button" value="" />
		</form>
	</div>
</div>
 
<div id="voteManage" class="box">
	<h2>修改投票</h2>
	<div class="content">
	<form method="post" action="Subject!save.action">
			<dl>
				<dt>投票内容：</dt>
				<dd>
				   <input type="hidden" name="entityId" value="103"/>
				   <input type="text" class="input-text" name="subject.title"  value="选出你心目中最好的下载工具"/>
				</dd>
				<dt>投票类型：</dt>
				<dd>
		  		   <input type="radio" name="subject.type" value="1" />单选
				   <input type="radio" name="subject.type"  checked="checked" value="2" />多选
				</dd>
				<dt>投票选项：</dt>
				
				
				<dd id="voteoptions">
					
						<p><input type="text" class="input-text" name="option_380" value="迅雷"/></p>
					
						<p><input type="text" class="input-text" name="option_381" value="网际快车"/></p>
					
						<p><input type="text" class="input-text" name="option_382" value="电驴"/><a class="del" href="javascript:;" onclick="DelOption()">删除</a></p>
					
						<p><input type="text" class="input-text" name="option_383" value="比特精灵"/><a class="del" href="javascript:;" onclick="DelOption()">删除</a></p>
					
						<p><input type="text" class="input-text" name="option_384" value="超级旋风"/><a class="del" href="javascript:;" onclick="DelOption()">删除</a></p>
					
				</dd>
				
				<dt></dt>
				<dd class="button">
					<input type="image" src="images/button_submit.gif" />
					<a href="javascript:;" onclick="AddOption()">增加选项</a>
					<a href="Subject!list.action">取消操作</a>
				</dd>
			</dl>
		</form>
	</div>
</div>
<div id="footer" class="wrap">
	博通教育 &copy; 版权所有
</div>
</body>
</html>
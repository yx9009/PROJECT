<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String b =request.getParameter("name");
request.setAttribute("b",b);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script type="text/javascript">
  function change(){
	  document.getElementById("h1").innerHTML = "hello";
	  var xmlhttp;
	  xmlhttp = new XMLHttpRequest();
	  xmlhttp.open("get", "Home.jsp?t="+Math.random(), true);
	  xmlhttp.send();
	  alert(xmlhttp.readyState);
	  alert(xmlhttp.status);
	  }
  function search(){
   var text =document.getElementById("text1").value;
   window.open("http://www.baidu.com/s?wd="+text);
	  }
  </script>
    
    <title>My JSP 'Home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <img alt="百度一下" src="web.png" height="30" width="80"/><input type="text" id="text1"/><input type="button" onclick="search()" value="百度一下"/>
  <form action="http://www.baidu.com/baidu" target="_blank">
<table bgcolor="#FFFFFF"><tr><td>
<input name=tn type=hidden value=baidu>
<a href="http://www.baidu.com/"><img src="http://img.baidu.com/img/logo-80px.gif" alt="Baidu" align="bottom" border="0"></a>
<input type=text name=word size=30>
<input type="submit" value="百度搜索">
</td></tr></table>
</form> 
  <br/>
  <s:form action="test" namespace="/user">
  <input type="text"  name="test"/>
  <input type="text"  name="name"/>
   <input type="text"  name="job"/>
   <div id="h1">abcdefg</div>
   <input type="button" title="ajax" value="ajax" onclick="change()" />
  <s:submit></s:submit>
  </s:form>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'upload1.jsp' starting page</title>
    
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
  <input type="file" name="files" size="50" style="width: 400px" />
   <s:form action="upload" namespace="/user" method="POST" enctype ="multipart/form-data" >
   <s:file label="上传文件" name="myFile"></s:file>
   <s:file label="上传文件1" name="myFile"></s:file>
   <s:file label="上传文件2" name="myFile"></s:file>
   <s:textfield name="caption" label="描述"></s:textfield>
   <s:submit value="提交"></s:submit>
   </s:form>
  </body>
</html>

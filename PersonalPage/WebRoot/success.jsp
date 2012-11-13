<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%List<String> list = new ArrayList<String>();list.add("满意");list.add("不满意");list.add("很不满意");list.add("一般");
request.setAttribute("list",list);
%>
<%
String t = request.getParameter("t");
out.print(t);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <h><s:property  value="test"/>
  5555555555555555555
      ${test };
      <%=request.getParameter("test") %>
      <%=request.getParameter("name") %>
      <%=request.getAttribute("ee") %>
     <%=request.getAttribute("list") %>
  </h>
  </body>
</html>

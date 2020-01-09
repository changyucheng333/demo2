<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>show</title>
    
  </head>
  
  <body>
    <div style="width: 400px; margin-left: 300px;">
    
    	<h2 align="center">常见问题检索</h2>
    	
	    <pre style="font-size: 18px;">
	    	分类： ${faqs.cname }
	    	
	    添加时间：<fmt:formatDate value="${faqs.createdate }" pattern="yyyy-MM-dd"/>
	    	
	    	标题： ${faqs.title }
	    	
	    	<span>内容：</span><textarea rows="5" cols="20">${faqs.content }</textarea>
	    	
	    	<input type="button"  onclick="javascript:history.back(-1);" value="返回">
	    </pre>
    </div>
  </body>
</html>

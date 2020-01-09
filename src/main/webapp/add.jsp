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
    
    <title>add</title>
    
  </head>
  
  <body>
    <div style="margin: 0 auto ;width: 300px;">
    	<h2>添加常见问题</h2>
    	<form action="<%=basePath%>insert.htm" method="post">
    		<table>
    		<tr>
    			<td>分类：</td>
    			<td><select name="classid" required="required">
    				<option value="">请选择</option>
    				<c:forEach var="faqs" items="${list }">
    					<option value="${faqs.id }">${faqs.cname }</option>
    				</c:forEach>
    			</select></td>
    		</tr>
   			<tr>
    			<td>标题：</td>
    			<td><input type="text" name="title" required="required"/></td>
    		</tr>
    		<tr>
    			<td>内容：</td>
    			<td><textarea rows="5" cols="22" name="content" required="required"></textarea> </td>
    		</tr>
    		<tr>
    			<td></td>
    			<td>
    			<input type="submit" value="保存"/>&nbsp;&nbsp;
    			<input type="reset" value="重置"/>&nbsp;&nbsp;
    			<input type="button"  onclick="javascript:history.back(-1);" value="返回"></td>
    		</tr>
    	</table>
    	</form>
    	<span style="color: red;margin: 0 auto;">${info }</span>
    </div>
  </body>
</html>

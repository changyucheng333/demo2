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
    
    <title>main</title>
    
	<style type="text/css">
		div{width: 700px; margin:0 auto;}
		td{border: 1px pink solid;text-align: center;}
		table{width: 700px;}
		tr{line-height: 26px;}
	</style>

  </head>
  
  <body>
    <div>
    <h2 align="center">常见问题检索</h2>
    	<center>请输入查询关键字：<input type="text" class="title"/><input type="button" value="查询" onclick="find()"/>		<a href="<%=basePath%>selectCname.htm">添加常见问题</a></center> 
    	<br/><h3 align="center">检索结果</h3>
    	<table cellspacing="0">
    		<tr style="font-weight: bold;">
    			<td>编号</td>
    			<td>标题</td>
    			<td>分类</td>
    			<td>创建时间</td>
    		</tr>
    		<c:forEach var="faqs" items="${list }">
    			<tr>
	    			<td>${faqs.id }</td>
	    			<td><a href="<%=basePath%>selectById.htm?id=${faqs.id }">${faqs.title }</a></td>
	    			<td>${faqs.cname }</td>
	    			<td><fmt:formatDate value="${faqs.createdate }" pattern="yyyy-MM-dd"/></td>
    			</tr>
    		</c:forEach>
    	</table>
    	<center style="color: red;" class="info">${info }</center>
    </div>
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
    	
    	$('table tr:first').css("background-color","#4EFEB3");
    	$('table tr:gt(0):odd').css("background-color","#ACD6FF");
    	
    	if($('.info').text()!=""){
    		window.setTimeout(function() {
    			$('.info').text("");
    		}, 3000);
    	}
    
    	function find(){
    		var title=$('.title').val();
    		location.href="<%=basePath%>selectAll.htm?title="+title;
    	}
    	
    </script>
  </body>
</html>

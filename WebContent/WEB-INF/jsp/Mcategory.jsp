<%@page import="gf.pojo.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>蔬果后台管理系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/mgr.css"/>
  </head>  
  <body>
     <body>
    <div id="container">
    <div id="header"><h1>水果后台管理系统</h1></div>
    	<div class="menu">
    		<ul>
    		
    			<li><a href="${pageContext.request.contextPath}/view_category">商品分类</a></li>
    			<li><a href="${pageContext.request.contextPath}/view_goods">商品管理</a></li>
    			
    		</ul>	
    	</div>
    	<div id="main">
			<div class="section-left">
<%
	if(request.getAttribute("delete_error") != null){
		out.write("<p style='color:red;'>"+request.getAttribute("delete_error")+"</p>");
	}
%>
				<h2>商品分类信息</h2>
				<table class="table" cellspacing="0">
			    	<tr>
			    		<td class="header" width="200">商品分类</td>
			    	
			    	</tr>
<%
	ArrayList<Category> arr = (ArrayList<Category>)request.getAttribute("categories");
	if(arr != null){
		for(Category cat : arr){
%>
			<tr>
				<td><%=cat.getCategory() %></td>
			
			</tr>
<%
		}
	}
%>			      			    
			    </table>
			</div>
			<div class="section-right">
<%
	if(request.getAttribute("error") != null){
		out.write("<p style='color:red;'>"+request.getAttribute("error")+"</p>");
	}
%>
				<h2>添加分类信息</h2>
				<form action="${pageContext.request.contextPath}/add_category" method="post">
					<p>分类名称：<input type="text" name="category"  required="required" /><input type="submit" value=" 保 存 "  /></p>						
			    </form>
			</div>			
			<div class="cf"></div>
		</div>  	
		
	</div>
  </body>
</html>
   

    
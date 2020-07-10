<%@page import="gf.pojo.Category"%>
<%@page import="gf.service.ProductService"%>
<%@page import="gf.pojo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>蔬果后台管理系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/mgr.css"/>
  </head>  
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
				<h2>商品信息列表</h2>		
				<table class="table" cellspacing="0" style="font-size: 12px;">
			    	<tr>
			    		<td class="header" width="50">商品描述</td>
			    		<td class="header" width="60">图片</td>
			    	<td class="header" width="60">分类</td>
			    	
			    	
			    	
			    	</tr>
<%

	ArrayList<Product> product =(ArrayList<Product>)request.getAttribute("product");
if(product != null){


		for(Product p : product){
%>
			<tr>
				<td><%=p.getProductMg() %></td>
				<td><%=p.getProductPhoto() %></td>
					<td><%=p.getCategory().getCategory() %></td>
				
			
			</tr>
<%
		}
}
	
%>
			    
			    
			    </table>
			</div>
			<div class="section-right">
				<h2>添加商品信息</h2>
				<form action="${pageContext.request.contextPath}/Addp" method="post" enctype="multipart/form-data">
					
				     <p>商品描述：<input type="text" name="productMg" required="required" /></p>
					<p>图片：<input type="file" name=productPhoto" required="required"  /></p>
										<p>商品分类：
																<select name="categoryId">
<%
	ArrayList<Category> categories = (ArrayList<Category>)request.getAttribute("categories");
	if(categories != null){
		for(Category category : categories){
%>
			<option value="<%=category.getcId() %>"><%=category.getCategory() %></option>
<%
		}
	}
%>
						</select>
					</p>    				 				
					<p><input type="submit" value=" 保 存 "  /></p>
				</form>
			</div>			
			<div class="cf"></div>
		</div>  	
	
	</div>
  </body>
</html>
    
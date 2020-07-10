<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>蔬果后台管理系统--用户登录</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/mgr.css"/>
  </head>  
  <body>
    <div id="container">
    	<div id="header"><h1>水果后台管理系统</h1></div>
    	<div id="main">
    		<h2>用户登录</h2>
			<form action="${pageContext.request.contextPath }/adminLogin" method="post">
				<p>登录账号：<input name="userId" type="text" /></p>
				<p>登录密码：<input name="userPsw" type="password" /></p>
				<p><input name="rememberMe" type="checkbox"  />记住账号和密码</p>
				<p><input type="submit" value=" 登  录 " />&nbsp;<label class="fail"></label></p>
			</form>
    	</div>  	
		
	</div>
  </body>
</html>
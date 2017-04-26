<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>智慧工厂（SmartShop）</title>
<link rel="shortcut icon" href="/Factory/images/favicon.png">
<link href="/Factory/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/Factory/css/templatemo_style.css" rel="stylesheet" type="text/css">
<!-- js -->
<script type="text/javascript" src="/Factory/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="/Factory/js/login.js"></script>
<!-- //js -->
<!-- for bootstrap working -->
<script type="text/javascript" src="/Factory/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->

</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">智慧工厂</h1>
			<div id="logo-area" class="logo-area"></div>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form">				
		        <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"></label>
		            	<input type="text" class="form-control"  name="userName" placeholder="用户名" id="username" onblur="CheckInput(this, 'username')" title="*用户名不能为空，且为4-20个字母数字组成！"/><span id="username_msg"></span>
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"></label>
		            	<input type="password" class="form-control"  name="password" placeholder="密码" id="password" onblur="CheckInput(this, 'password')" title="*密码不能为空，且为6-20个非空字符组成！"/><span id="password_msg"></span>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
	             	<div class="checkbox control-wrapper">
	                	<label>
	                  		<input type="checkbox">记住密码
                		</label>
	              	</div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          		<input type="button" value="登 录" class="btn btn-info" id="login">
		          		<a href="/Factory/jsp/forgot-password.jsp" class="text-right pull-right forget">忘记密码？</a>
		          	</div>
		          </div>
		        </div>
		        <hr>
		       
		      </form>
		      <div class="text-center">
		      	<a href="/Factory/jsp/create-account.jsp" class="templatemo-create-new">创建新用户 → </a>	
		      </div>
		</div>
	</div>
</body>
<p align="center" class="publish"> Copyright©2014-2017 智慧工厂（Smart-shop） 版权所有</p>
</html>
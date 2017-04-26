<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/Factory/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="/Factory/images/favicon.png">
<link href="/Factory/css/templatemo_style.css" rel="stylesheet" type="text/css">
<!-- js -->
<script type="text/javascript" src="/Factory/js/jquery-2.1.4.min.js"></script>
<!-- for bootstrap working -->
<script type="text/javascript" src="/Factory/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<script type="text/javascript" src="/Factory/js/login.js"></script>
<!-- //js -->
<title>智慧工厂（SmartShop）</title>
</head>
<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">创建新用户</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" >
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">公司名称</label>
			            <input type="text" class="form-control" id="companyName" placeholder="请务必填写公司注册全称" onblur="CheckInput(this, 'companyName')" title="*公司名称不能为空"/><span id="companyName_msg"></span>		            		            		            
			          </div>  
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">邮箱</label>
			            <input type="email" class="form-control" id="email" placeholder="按照标准邮箱格式输入" onblur="CheckInput(this, 'email')" title="*邮箱不能为空，且保证格式正确！"/><span id="email_msg"></span>		            		            		            
			          </div>              
			        </div>			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">用户名</label>
			            <input type="text" class="form-control" id="username" placeholder="限制3-20 个字符" onblur="CheckInput(this, 'username')" title="*用户名不能为空，且为4-20个字母数字组成！"/><span id="username_msg"></span>		            		            		            
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">密码</label>
			            <input type="password" class="form-control"  placeholder="请保持一定复杂度" id="password" onblur="CheckInput(this, 'password')" title="*密码不能为空，且为6-20个非空字符组成！"/><span id="password_msg"></span>
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">确认密码</label>
			            <input type="password" class="form-control"  placeholder="请再输入一次" id="confPassword" onblur="CheckInput(this, 'confPassword')" title="*两次密码输入不一致！"/><span id="confPassword_msg"></span>
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <label><input type="checkbox" onclick="checkCreate(this.checked)">我同意 <a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">《智慧工厂注册须知》</a></label>
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="button" id="createUser" value="创建用户" class="btn btn-info" disabled="disabled">
			            <a href="/Factory/jsp/login.jsp" class="pull-right">登录→</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
	        <h4 class="modal-title" id="myModalLabel">智慧工厂注册须知</h4>
	      </div>
	      <div class="modal-body">
	      	<p>在您开始注册之前，请先阅读以下条款：</p>
	        <p>一、遵守中华人民共和国法律法令和其他相关法规，不可发布破坏宪法和法律、法规的信息。<br>
                                             二、遵守公安部关于《计算机信息网络国际联网安全保护管理办法》的规定，自觉维护计算机信息网络的安全。 <br>
                                             三、不得在网上宣扬封建迷信、淫秽、色情、暴力、赌博等不正当行为。 <br>
                                             四、企业或个人发布的信息要真实有效、准确完整，并不得有引人误解或者虚假的陈述。 <br>
                                             五、申请人必须填写详细、真实信息，如企业 / 单位名称、简介、地址、电话等。因信息填写不真实、不完整或填写错误的本网站不予以发表。<br> 
                                             六、本网站建站宗旨是为医药行业供需双方搭建商务平台。网站所发布的信息是供上网人员参考，并不对信息真伪承担责任，且网站不参与任何交易过程。因此，供需双方应对交易行为自行负责。 <br>
                                             七、用户注册成功后，请妥善保管您的用户名和密码，以备下次发布、修改信息使用。<br>
            </p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="/Factory/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="/Factory/js/bootstrap-3.1.1.min.js"></script>
</body>
<p align="center" class="publish"> Copyright©2014-2017 智慧工厂在线（Smart-shop） 版权所有</p>
</html>
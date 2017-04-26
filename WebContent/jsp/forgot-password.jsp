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
<script type="text/javascript" src="/Factory/js/login.js"></script>
<!-- //for bootstrap working -->
<script type="text/javascript">

$(document).on('click',"#resetPs",function(){
	var email = $("#email").val();
	if (email!='') {
		location="mailto:"+email+"?cc=smartshop@163.com&subject=重置密码&body=密码重置确认";
	}
	else{
		alert('发送失败，请确认已注册邮箱或者邮箱格式错误！');
	}
})

</script>
<!-- //js -->
<title>智慧工厂（SmartShop）</title>
</head>

<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">密码重置</h1>
			<form class="form-horizontal templatemo-forgot-password-form templatemo-container" role="form" action="" method="post">	
				<div class="form-group">
		          <div class="col-md-12">
		          	请输入您已经注册的邮箱地址
		          </div>
		        </div>		
		        <div class="form-group">
		          <div class="col-md-12">
		          <input type="email" class="form-control" id="email" placeholder="按照标准邮箱格式输入" onblur="CheckInput(this, 'email')" title="*邮箱不能为空，且保证格式正确！"/><span id="email_msg"></span>		            		            		            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <input type="button" value="发送重置邮件" id="resetPs" class="btn btn-danger" />
                    <br><br>
		          </div>
		        </div>
		      </form>
		</div>
	</div>
</body>
<p align="center" class="publish"> Copyright©2014-2017 智慧工厂在线（Smart-shop） 版权所有</p>
</html>
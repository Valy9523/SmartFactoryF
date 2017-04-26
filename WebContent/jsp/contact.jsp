<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>联系我们</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<script type="text/javascript">
var userId = 0;
if (<%=session.getAttribute("userId")%>!=null) {
userId = <%=session.getAttribute("userId")%>;	
}
</script>
<link rel="shortcut icon" href="/Factory/images/favicon.png">
<link href="/Factory/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/Factory/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="/Factory/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="/Factory/js/simpleCart.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
	<script type="text/javascript" src="/Factory/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<script src="/Factory/js/jquery.easing.min.js"></script>
<script src="/Factory/js/common.js"></script>
</head>
<body>
<div class="loading"></div>
<!-- header -->
<%@include file="header.jsp" %>
<script> 
    $('.loading').animate({'width':'33%'},100);  //第一个进度节点 
</script> 
<!-- //banner-top -->
<!-- banner -->
<div class="page-head">
	<div class="container">
		<h3>联系我们</h3>
	</div>
</div>
<!-- //banner -->
<!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="contact-grids">
				<div class="col-md-4 contact-grid text-center animated wow slideInLeft" data-wow-delay=".5s">
					<div class="contact-grid1">
						<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
						<h4>位置</h4>
						<p><span>智慧市</span>智慧路12号智慧街 </p>
					</div>
				</div>
				<div class="col-md-4 contact-grid text-center animated wow slideInUp" data-wow-delay=".5s">
					<div class="contact-grid2">
						<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
						<h4>联系电话</h4>
						<p>+1234 567 890<span>+73 748 730</span></p>
					</div>
				</div>
				<div class="col-md-4 contact-grid text-center animated wow slideInRight" data-wow-delay=".5s">
					<div class="contact-grid3">
						<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
						<h4>邮箱</h4>
						<p><a href="mailto:SmartShop@163.com">SmartShop@163.com</a><span><a href="mailto:SmartShop@sina.com">SmartShop@sina.com</a></span></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="map wow fadeInDown animated" data-wow-delay=".5s">
				<h3 class="tittle">在地图上显示</h3>
				<iframe src="/Factory/images/baidumap.html" frameborder="0" style="border:0"></iframe>
			</div>
		</div>
	</div>
<script> 
    $('.loading').animate({'width':'77%'},100);  //第一个进度节点 
</script>
<!-- //contact -->

<!-- //product-nav -->
<%@include file="footer.jsp" %>
<!-- //footer -->
<script> 
    $('.loading').animate({'width':'100%'},100);  
    $(document).ready(function(){ 
        $('.loading').fadeOut();     
    }); //第一个进度节点 
</script>
</body>
</html>

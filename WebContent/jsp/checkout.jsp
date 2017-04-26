<%@page import="com.tgb.entity.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>结算</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
var userId = 0;
if (<%=session.getAttribute("userId")%>!=null) {
userId = <%=session.getAttribute("userId")%>;	
}
</script>
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link rel="shortcut icon" href="/Factory/images/favicon.png">
<link href="/Factory/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pignose css -->
<link href="/Factory/css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
<link href="/Factory/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pignose css -->
<!-- js -->
<script type="text/javascript" src="/Factory/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="/Factory/js/simpleCart.js"></script>
<script type="text/javascript">
simpleCart({
    cartColumns: [
     {view:function(item,column){
    	 return "<a href='javascript:;' class='simpleCart_remove'><div class='closeitem'></div></a>";
     } , label: '操作',attr:"remove" },
     {view:function(item,column){
    	return "<a href='/Factory/search/detail.do?table="+item.get('table')+"&name="+item.get('name')+"'><img src='" + item.get(column.attr) + "') alt='' style='height:143.78px;width:126px;' class='img-thum' /></a>" 
     },attr: "image", label: "图片展示",},
     {view: function(item,column){
    	return "<a href='javascript:;' class='simpleCart_decrement'><div class='entry value-minus'><span>-</span></div></a>"
     }, label: false ,attr:"decrement"},
     {view:function(item,column){
    	 return "<div class='entry value'><span>"+item.quantity()+"</span></div>"
     },label:"数量",attr:"quantity"},
     {view: function(item,column){
     	return "<a href='javascript:;' class='simpleCart_increment'><div class='entry value-plus'><span>+</span></div></a>"
      }, label: false ,attr:"increment"},
     {attr: "name", label: "名称" },
     {attr: "price", label: "单价", view: "currency" },
     {attr: "total", label: "小计", view: 'currency' },
     
    ],
    cartStyle:'table',
});
</script>
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

<!-- //header -->
<!-- header-bot -->
<%@include file="header.jsp" %>
<script> 
    $('.loading').animate({'width':'33%'},100);  //第一个进度节点 
</script>
<!-- //banner-top -->
<!-- banner -->
<div class="page-head">
	<div class="container">
		<h3>购物车</h3>
	</div>
</div>
<!-- //banner -->
<!-- check out -->
<div class="checkout">
	<div class="container">
		<h3>结算</h3>
		<div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
			<table class="timetable_sub simpleCart_items table-hover">
			
			</table>
		</div>
	
		<div class="checkout-left">	
				
				<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
					<a href="/Factory/jsp/home.jsp"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>返回产品界面</a>
				</div>
				<div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
					<h4>消费单</h4>
					<ul>
                    <li>产品总价<i>-</i> <span id="simpleCart_total" class="simpleCart_total"></span></li>						
				    <li>运费<i>-</i> <span id="simpleCart_shipping" class="simpleCart_shipping"></span></li>						
					<li>总计 <i>-</i> <span id="simpleCart_grandTotal" class="simpleCart_grandTotal"></span></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<a id="simpleCart_checkorder" class="single-item hvr-outline-out button2 saveOrder simpleCart_checkorder">确认下单</a>
			</div>
	</div>
</div>	
<script> 
    $('.loading').animate({'width':'66%'},100); 
</script>
<!-- //check out -->
<!-- //product-nav -->
<!-- footer -->
<%@include file="footer.jsp"%>
<script> 
    $('.loading').animate({'width':'100%'},100); 
    $(document).ready(function(){ 
        $('.loading').fadeOut();     
    }); 
</script>
<!-- //footer -->

</body>
</html>

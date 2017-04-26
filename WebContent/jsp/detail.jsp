<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${rs.name }</title> 
<%-- <title>${table1 }</title> --%>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="/Factory/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="/Factory/css/flexslider.css" type="text/css" media="screen" />
<link rel="shortcut icon" href="/Factory/images/favicon.png">
<link href="/Factory/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="/Factory/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
var userId = 0;
if (<%=session.getAttribute("userId")%>!=null) {
userId = <%=session.getAttribute("userId")%>;	
}
var pName = '${rs.name }';
</script>
<!-- //js -->
<!-- single -->
<script src="/Factory/js/imagezoom.js"></script>
<script src="/Factory/js/jquery.flexslider.js"></script>
<!-- single -->
<!-- cart -->
	<script src="/Factory/js/simpleCart.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
	<script type="text/javascript" src="/Factory/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<script src="/Factory/js/jquery.easing.min.js"></script>
<script src="/Factory/js/common.js"></script>
<script src="/Factory/js/detail.js"></script>
</head>
<body>
<div class="loading"></div> 
<!-- header -->
<%@include file="header.jsp"%>
<script> 
    $('.loading').animate({'width':'33%'},100);  //第一个进度节点 
</script>
<!-- //banner-top -->
<!-- banner -->
<div class="page-head">
	<div class="container">
		<h3>${rs.type }</h3>
	</div>
</div>
<!-- //banner -->
<!-- single -->
<div class="single">
	<div class="container">
		<div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
			<div class="grid images_3_of_2">
				<div class="flexslider">
					<!-- FlexSlider -->
						<script>
						// Can also be used with $(document).ready()
							$(window).load(function() {
								$('.flexslider').flexslider({
								animation: "slide",
								controlNav: "thumbnails"
								});
							});
						</script>
					<!-- //FlexSlider-->
					<ul class="slides">
					    
						<li data-thumb="../images/${rs.path1 }">
							<div class="thumb-image"> <img src="../images/${rs.path1 }" data-imagezoom="true" class="img-responsive"> </div>
						</li>
						<li data-thumb="../images/${rs.path1 }">
							<div class="thumb-image"> <img src="../images/${rs.path1 }" data-imagezoom="true" class="img-responsive"> </div>
						</li>	
						<li data-thumb="../images/${rs.path1 }">
							<div class="thumb-image"> <img src="../images/${rs.path1 }" data-imagezoom="true" class="img-responsive"> </div>
						</li>
						<li data-thumb="../images/${rs.path1 }">
							<div class="thumb-image"> <img src="../images/${rs.path1 }" data-imagezoom="true" class="img-responsive"> </div>
						</li>	
					</ul>
					<div class="clearfix"></div>
				</div>	
			</div>
		</div>
		<div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
					<a class="item_name pName"><h3>${rs.name}</h3></a>
					<a class="item_table" style="display:none;">${rs.table}</a>
					<img  class="item_image" src="/Factory/images/${rs.path1 }" alt="" style="display:none; ">
					<p><span class="item_price">¥${rs.price  }</span> <del>- ¥${rs.delPrice  }</del></p>
					<p><span class="count">数量:</span></p>
					<div class="quantity"> 
								<div class="quantity-select"> 
									<div class="entry value-minus">&nbsp;</div>
									<input type="text" class="item_quantity value" value="1"></input>
									<div class="entry value-plus">&nbsp;</div>
								</div>
					</div>
					<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.val(), 10)+1;
										divUpd.val(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.val(), 10)-1;
										if(newVal>=1) divUpd.val(newVal);
									});
			       </script>
					<div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked="">
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
					</div>
					<div class="description">
						<h5>检查您所在区域是否属于物流免费送达地区...</h5>
						<input type="text" class="pcode" value="邮政编码..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '邮政编码...';}"  required="">
						<input type="button" value="确认" class="checkPcode">
						<span id="pcode_msg"></span>
					</div>
					
				
					<div class="occasion-cart">
						<a href="javascript:;" class="item_add hvr-outline-out button2">加入购物车</a>
					</div>
					
		</div>
				<div class="clearfix"> </div>

				<div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">详情描述</a></li>
							<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" class="loadReview">评论(1)</a></li>
							<li role="presentation" class="dropdown">
								<a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">注意事项 <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
									<li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">使用年限</a></li>
									<li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">安全指南</a></li>
								</ul>
							</li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
								<h5>产品简明描述</h5>
								<p>${rs.description }</p>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
								<div class="bootstrap-tab-text-grids">
									<div class="bootstrap-tab-text-grid">
										<div class="bootstrap-tab-text-grid-left">
											<img src="../images/men3.jpg" alt=" " class="img-responsive">
										</div>
										<div class="bootstrap-tab-text-grid-right">
											<ul>
												<li><a href="#">商家</a></li>
												<!-- <li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>回复</a></li> -->
											</ul>
											<p>商家的留言...</p>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="reviewRoom">
									
									</div>
								</div>
									<div class="add-review">
										<h4>添加评论</h4>
										<form>
											<input class="reviewName" type="text" value="标题" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '标题';}" required="">
											<input class="reviewEmail" type="email" value="邮箱" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '邮箱';}" required="">
											<textarea class="reviewContent" type="text" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '内容...';}" required="">内容...</textarea>
											<a class="single-item hvr-outline-out button2 addreview">提交评论</a>
										</form>
									</div>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
								<p>使用年限...</p>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
								<p>安全指南...</p>
							</div>
						</div>
					</div>
				</div>
	</div>
</div>
<script> 
    $('.loading').animate({'width':'77%'},100);  //第一个进度节点 
</script>
<!-- //single -->
<!-- //product-nav -->
<%@include file="footer.jsp"%>
<!-- //footer -->
<script> 
    $('.loading').animate({'width':'100%'},100); 
    $(document).ready(function(){ 
        $('.loading').fadeOut();     
    }); 
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>智慧工厂-精工零件</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> 
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script type="text/javascript">
var userId = 0;
if (<%=session.getAttribute("userId")%>!=null) {
userId = <%=session.getAttribute("userId")%>;	
}
var table = '${table}';
var name = '${name}';
var type = '${type}';
</script>
<!-- //for-mobile-apps -->
<link href="/Factory/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="shortcut icon" href="/Factory/images/favicon.png">
<link rel="stylesheet" type="text/css" href="/Factory/css/jquery-ui.css">
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
<script src="/Factory/js/bootstrap-paginator.js"></script>
<script src="/Factory/js/heav.js"></script>
</head>
<body>

<!-- header -->
<div class="loading"></div>
<%@include file="header.jsp"%>
<script> 
    $('.loading').animate({'width':'33%'},100);  //第一个进度节点 
</script>
<!-- //banner-top -->
<!-- banner -->
<div class="page-head">
	<div class="container">
		<h3>精工零件</h3>
	</div>
</div>
<!-- //banner -->
<!-- Electronics -->
<div class="electronics">
	<div class="container">
		<div class="col-md-8 electro-left text-center">
			<div class="electro-img-left mask">
				<div class="content-grid-effect slow-zoom vertical">
					<div class="img-box"><img  class="img-responsive zoom-img item_image" src="/Factory/images/chilun1.jpg" alt=""></div>
						<div class="info-box">
							<div class="info-content electro-text simpleCart_shelfItem">
								<a class="item_name"><h4>五轴传动齿轮</h4></a>
								<span class="separator"></span>
								<a class="item_table" style="display:none;">fine_parts</a>
								<img  class="item_image" src="/Factory/images/chilun2.jpg" alt="" style="display:none; ">
								<p><span class="item_price">¥500</span></p>
								<span class="separator"></span>
								<a class="item_add hvr-outline-out button2" href="#">加入购物车</a>
							</div>
						</div>
				</div>
			</div>
			<div class="electro-img-btm-left mask">
				<div class="content-grid-effect slow-zoom vertical">
					<div class="img-box"><img src="../images/zhoucheng1.jpg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content electro-text simpleCart_shelfItem">
								<a class="item_name"><h4>轴承</h4></a>
								<span class="separator"></span>
								<a class="item_table" style="display:none;">fine_parts</a>
								<img  class="item_image" src="/Factory/images/zhoucheng2.jpg" alt="" style="display:none; ">
								<p><span class="item_price">¥170</span></p>
								<span class="separator"></span>
								<a class="item_add hvr-outline-out button2" href="javascript:;">加入购物车</a>
							</div>
						</div>
				</div>
			</div>
			<div class="electro-img-btm-right mask">
				<div class="content-grid-effect slow-zoom vertical">
					<div class="img-box"><img src="../images/luoshuan1.jpg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content electro-text simpleCart_shelfItem">
								<a class="item_name"><h4>法兰螺栓</h4></a>
								<span class="separator"></span>
								<a class="item_table" style="display:none;">fine_parts</a>
								<img  class="item_image" src="/Factory/images/luoshuan2.jpg" alt="" style="display:none; ">
								<p><span class="item_price">¥170</span></p>
								<span class="separator"></span>
								<a class="item_add hvr-outline-out button2" href="javascript:;">加入购物车</a>
							</div>
						</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-4 electro-right text-center">
			<div class="electro-img-rt mask">
				<div class="content-grid-effect slow-zoom vertical">
					<div class="img-box"><img src="../images/tanhuang1.jpg" alt="image" class="img-responsive zoom-img"></div>
						<div class="info-box">
							<div class="info-content electro-text simpleCart_shelfItem">
								<a class="item_name"><h4>弹簧</h4></a>
								<span class="separator"></span>
								<a class="item_table" style="display:none;">fine_parts</a>
								<img  class="item_image" src="/Factory/images/tanhuang2.jpg" alt="" style="display:none; ">
								<p><span class="item_price">¥170</span></p>
								<span class="separator"></span>
								<a class="item_add hvr-outline-out button2" href="javascript:;">加入购物车</a>
							</div>
						</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
			<div class="ele-bottom-grid">
				<h3><span>精选</span>产品</h3>
				<p>我们为您甄选精工零件的无瑕疵产品，精益求精，质量制胜。</p>
			 <div class="selectPage">
			
			 </div>
						<div class="clearfix"></div>
			
			</div>
			<span id="totalPage">总页数：<span id="totalPageC"></span></span>
			<div class="pagination-grid text-right">
			<ul class="pagination"id="pageUl"></ul>
		   </div> 
		</div> 
	</div>
</div>
<script> 
    $('.loading').animate({'width':'77%'},100);  //第一个进度节点 
</script>
<!-- //Electronics -->
<!-- //product-nav -->
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
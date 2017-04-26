<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>智慧工厂（SmartShop）</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<script>
var userId = 0;
if (<%=session.getAttribute("userId")%>!=null) {
userId = <%=session.getAttribute("userId")%>;	
}
var sear='fail';
if(sear='${search}'){
	alert('无法检索到此产品，请重新输入。');
}
</script>
<!-- //for-mobile-apps -->
<link href="/Factory/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pignose css -->
<link href="/Factory/css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
<link href="/Factory/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="shortcut icon" href="/Factory/images/favicon.png">
<!-- //pignose css -->
<!-- js -->
<script type="text/javascript" src="/Factory/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="/Factory/js/simpleCart.js"></script>
<script type="text/javascript">
var addCart = function(){
<c:forEach var="item" items="${orList}"> 
simpleCart.add({
	name:"${item.name}",
	quantity:"${item.quantity}",
	table:"${item.tableName}",
	price:"${item.price}",
	image:"${item.image}",
})
</c:forEach> 
}
addCart();
</script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="/Factory/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script src="/Factory/js/jquery.easing.min.js"></script>
<script src="/Factory/js/common.js"></script>
<script src="/Factory/js/home.js"></script>
</head>
<body>
<div class="loading"></div> 
<!-- header -->
<%@include file="header.jsp"%>
<script> 
    $('.loading').animate({'width':'22%'},100);  //第一个进度节点 
</script> 
<!-- //banner-top -->
<!-- banner -->
<div class="banner-grid">
	<div id="visual">
			<div class="slide-visual">
				<!-- Slide Image Area (1000 x 424) -->
				<ul class="slide-group">
					<li><a href="/Factory/search/searchCommon.do?table=heav_mach"><img class="img-responsive" src="/Factory/images/factory1.jpg" alt="Dummy Image" /></a></li>
					<li><a href="/Factory/search/searchCommon.do?table=build_mater"><img class="img-responsive" src="/Factory/images/bath2.jpg" alt="Dummy Image" /></a></li>
					<li><a href="/Factory/search/searchCommon.do?table=elec_device"><img class="img-responsive" src="/Factory/images/room3.jpg" alt="Dummy Image" /></li>
				</ul>

				<!-- Slide Description Image Area (316 x 328) -->
				<div class="script-wrap">
					<ul class="script-group">
						<li><div class="inner-script"><img class="img-responsive" src="/Factory/images/factory11.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="/Factory/images/bath22.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="/Factory/images/room33.jpg" alt="Dummy Image" /></div></li>
					</ul>
					<div class="slide-controller">
						<a href="#" class="btn-prev"><img src="/Factory/images/btn_prev.png" alt="Prev Slide" /></a>
						<a href="#" class="btn-play"><img src="/Factory/images/btn_play.png" alt="Start Slide" /></a>
						<a href="#" class="btn-pause"><img src="/Factory/images/btn_pause.png" alt="Pause Slide" /></a>
						<a href="#" class="btn-next"><img src="/Factory/images/btn_next.png" alt="Next Slide" /></a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	<script type="text/javascript" src="/Factory/js/pignose.layerslider.js"></script>
	<script type="text/javascript">
	//<![CDATA[
		$(window).load(function() {
			$('#visual').pignoseLayerSlider({
				play    : '.btn-play',
				pause   : '.btn-pause',
				next    : '.btn-next',
				prev    : '.btn-prev'
			});
		});
	//]]>
	</script>

</div>
<!-- //banner -->
<!-- content -->

<div class="new_arrivals">
	<div class="container">
		<h3><span>热门 </span>清单</h3>
		<p>向您展示一周以来行业的采购价格走向，智慧工厂竭诚为您提供最智能最体贴的服务。</p>
		<div class="new_grids">
			<div class="col-md-4 new-gd-left">
				<img src="/Factory/images/zouxiang.jpg" alt=" " />
			</div>
			<div class="col-md-4 new-gd-middle">
				<div class="new-levis">
					<div class="mid-img">
						<img src="/Factory/images/levis1.png" alt=" " />
					</div>
					<div class="mid-text">
						<h4>涨幅40%<span>up</span></h4>
						<a class="hvr-outline-out button2" href="/Factory/search/detail.do?table=heav_mach&name=等离子切割机">现在购买 </a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="new-levis">
					<div class="mid-text">
						<h4>直降50% <span>off</span></h4>
						<a class="hvr-outline-out button2" href="/Factory/search/detail.do?table=heav_mach&name=激光切割机">现在购买 </a>
					</div>
					<div class="mid-img">
						<img src="/Factory/images/dig.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 new-gd-left">
				<img src="/Factory/images/zouxiang2.jpg" alt=" " />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //content -->

<!-- content-bottom -->

<div class="content-bottom">
	<div class="col-md-7 content-lgrid">
		<div class="col-sm-6 content-img-left text-center">
			<div class="content-grid-effect slow-zoom vertical">
				<div class="img-box"><img src="/Factory/images/p2.jpg" alt="image" class="img-responsive zoom-img"></div>
					<div class="info-box">
						<div class="info-content simpleCart_shelfItem">
									<h4></h4>
									<span class="separator"></span>
									<p><span class="item_price">¥500</span></p>
									<span class="separator"></span>
									<a href="/Factory/search/detail.do?table=elec_device&name=表面声波式触控屏" class="hvr-outline-out button2" >了解更多 </a>
						</div>
					</div>
			</div>
		</div>
		<div class="col-sm-6 content-img-right">
			<h3>独家渠道<span>大突破</span>可视化机械</h3>
		</div>
		
		<div class="col-sm-6 content-img-right">
			<h3><span>重工领航者</span>等离子切割机</h3>
		</div>
		<div class="col-sm-6 content-img-left text-center">
			<div class="content-grid-effect slow-zoom vertical">
				<div class="img-box"><img src="/Factory/images/p1.jpg" alt="image" class="img-responsive zoom-img"></div>
					<div class="info-box">
						<div class="info-content simpleCart_shelfItem">
							<h4></h4>
							<span class="separator"></span>
							<p><span class="item_price">¥250</span></p>
							<span class="separator"></span>
							<a href="/Factory/search/detail.do?table=heav_mach&name=等离子切割机" class="hvr-outline-out button2" >了解更多 </a>
						</div>
					</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="col-md-5 content-rgrid text-center">
		<div class="content-grid-effect slow-zoom vertical">
				<div class="img-box"><img src="/Factory/images/p4.jpg" alt="image" class="img-responsive zoom-img"></div>
					<div class="info-box">
						<div class="info-content simpleCart_shelfItem">
									<h4>零件定制</h4>
									<span class="separator"></span>
									<p><span class="item_price">¥150</span></p>
									<span class="separator"></span>
									<a href="/Factory/search/detail.do?table=fine_parts&name=关节轴承"class="hvr-outline-out button2" >了解更多 </a>
						</div>
					</div>
			</div>
	</div>
	<div class="clearfix"></div>
</div>
<!-- //content-bottom -->
<!-- product-nav -->
<script> 
    $('.loading').animate({'width':'55%'},50);  
</script> 
<div class="product-easy">
	<div class="container">
		
		<script src="/Factory/js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
							$(document).ready(function () {
								$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true   // 100% fit in a container
								});
							});
							
		</script>
		<div class="sap_tabs">
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>最新产品</span></li> 
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>特别提供</span></li> 
					<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>优质尾货</span></li> 
				</ul>				  	 
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
						<div class="NewPage">
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="SpecialPage">
						</div>
						<div class="clearfix"></div>						
					</div>
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
						<div class="LeftPage">
						</div>
						<div class="clearfix"></div>		
					</div>	
				</div>	
			</div>
		</div>
	</div>
</div> 
<!-- //product-nav -->
<script> 
    $('.loading').animate({'width':'88%'},100);  
</script>
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

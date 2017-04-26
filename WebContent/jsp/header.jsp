<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="header">
	<div class="container">
		<ul>
			<li><span class="glyphicon glyphicon-time" aria-hidden="true"></span>快速物流最迟三日达</li>
			<li><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>完全免费的订购服务</li>
			<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:SmartShop@163.com">SmartShop@163.com</a></li>
		</ul>
	</div>
</div>
<div class="header-bot">
	<div class="container">
		<div class="col-md-3 header-left">
			<h1><a href="/Factory/jsp/home.jsp"><img src="/Factory/images/logo3.jpg"></a></h1>
		</div>
		<div class="col-md-6 header-middle">
			<form>
				<div class="search">
					<input id="search" type="search" placeholder="搜索您的需求..." >
					<!-- <input id="search" type="search" value="搜索您的需求..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '搜索您的需求...';}" > -->
				</div>
				<div class="section_room">
					<select id="country"  class="frm-field required">
						<option value="home">所有种类</option>
						<option value="elec_device">电子设备</option>     
						<option value="build_mater">建筑材料</option>
						<option value="heav_mach">重型器械</option>
						<option value="fine_parts">精细零件</option>
					</select>
				</div>
				<div class="sear-sub">
					<input class="sear-but" type="button" value=" ">
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
		<div class="col-md-1 dropdown">
				<a href="#" class="dropdown-toggle userIcon" data-toggle="dropdown">
					User Avatar
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">注销</a></li>
					<li><a href="#">重新登录</a></li>
					<li><a href="#">修改密码</a></li>
				</ul>
			</div>
		<div class="col-md-2 header-right footer-bottom">
			<ul>
				<li><a href="/Factory/jsp/login.jsp" class="use1" ><span>登录</span></a>
				</li>
				<li><a class="qq" href="#"></a></li>
				<li><a class="weix" href="#"></a></li>
				<li><a class="mail" href="#"></a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
					<li class="active menu__item menu__item--current"><a class="menu__link" href="/Factory/jsp/home.jsp">主页 <span class="sr-only">(current)</span></a></li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">电子设备<span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
										<a href="/Factory/search/searchCommon.do?table=elec_device"><img src="/Factory/images/electronic.jpg" alt=" "/></a>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a onclick="eclick(this.innerHTML)">固定电阻器</a></li>
											<li><a onclick="eclick(this.innerHTML)">电位器</a></li>
											<li><a onclick="eclick(this.innerHTML)">变压器</a></li>
											<li><a onclick="eclick(this.innerHTML)">继电器</a></li>
											<li><a onclick="eclick(this.innerHTML)">电声器件</a></li>
											<li><a onclick="eclick(this.innerHTML)">传感器</a></li>
											<li><a onclick="eclick(this.innerHTML)">工业电源</a></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a onclick="eclick(this.innerHTML)">二极管</a></li>
											<li><a onclick="eclick(this.innerHTML)">保险元件</a></li>
											<li><a onclick="eclick(this.innerHTML)">触控屏</a></li>
											<li><a onclick="eclick(this.innerHTML)">播控设备</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">建筑材料<span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a onclick="bclick(this.innerHTML)">卫浴/厨具</a></li>
											<li><a onclick="bclick(this.innerHTML)">地板/砖瓦</a></li>
											<li><a onclick="bclick(this.innerHTML)">灯具</a></li>
											<li><a onclick="bclick(this.innerHTML)">涂料/水泥</a></li>
											<li><a onclick="bclick(this.innerHTML)">五金/锁具</a></li>
											<li><a onclick="bclick(this.innerHTML)">钢材/管材</a></li>
											<li><a onclick="bclick(this.innerHTML)">玻璃制品</a></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a onclick="bclick(this.innerHTML)">墙体材料</a></li>
											<li><a onclick="bclick(this.innerHTML)">阀门/仪器</a></li>
											<li><a onclick="bclick(this.innerHTML)">金属加工</a></li>
											<li><a onclick="bclick(this.innerHTML)">门窗/窗帘</a></li>
										</ul>
									</div>
									<div class="col-sm-6 multi-gd-img multi-gd-text ">
										<a href="/Factory/search/searchCommon.do?table=build_mater"><img src="/Factory/images/woo.jpg" alt=" "/></a>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
					<li class=" menu__item"><a class="menu__link" href="/Factory/search/searchCommon.do?table=heav_mach">重型器械</a></li>
					<li class=" menu__item"><a class="menu__link" href="/Factory/search/searchCommon.do?table=fine_parts">精细零件</a></li>
					<li class=" menu__item"><a class="menu__link" href="/Factory/jsp/contact.jsp">联系我们</a></li>
				  </ul>
				</div>
			  </div>
			</nav>	
		</div>
		<div class="top_nav_right">
			<div class="cart box_1">
						<a href="/Factory/jsp/checkout.jsp">
							<h3> <div class="total">
								<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)</div>
								
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
						
			</div>	
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</body>
</html>
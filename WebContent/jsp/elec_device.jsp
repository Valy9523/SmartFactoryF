
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>智慧工厂-电子设备</title>
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
<script src="/Factory/js/electronic.js"></script>
<script src="/Factory/js/bootstrap-paginator.js"></script>

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
		<h3>电子设备</h3>
	</div>
</div>
<!-- //banner -->
<!-- mens -->
<div class="men-wear">
	<div class="container">
		<div class="col-md-4 products-left">
			<div class="filter-price">
				<h3>价格过滤</h3>
					<ul class="dropdown-menu6">
						<li>                
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>			
					</ul>
							<!---->
							<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 600,
										values: [ 1, 600 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "¥" + ui.values[ 0 ] + " - ¥" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "¥" + $( "#slider-range" ).slider( "values", 0 ) + " - ¥" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  

							</script>
						<script type="text/javascript" src="/Factory/js/jquery-ui.js"></script>
					 <!---->
			</div>
			<div class="css-treeview">
				<h4>分 类</h4>
				<ul class="tree-list-pad">
					<li><input type="checkbox"  id="item-0" /><label for="item-0"><span></span>所有产品</label>
						<ul>
							<li><input type="checkbox" id="item-0-0" /><a  onclick="treeChange(this.innerHTML)" >固定电阻器</a>
							</li>
							<li><input type="checkbox"  id="item-0-1" /><a  onclick="treeChange(this.innerHTML)" >电位器</a>
							</li>
							<li><input type="checkbox"  id="item-0-2" /><a  onclick="treeChange(this.innerHTML)" >变压器</a>
							</li>
							<li><input type="checkbox"  id="item-0-3" /><a  onclick="treeChange(this.innerHTML)" >继电器</a>
							</li>
							<li><input type="checkbox"  id="item-0-4" /><a  onclick="treeChange(this.innerHTML)" >电声器件</a>
							</li>
							<li><input type="checkbox"  id="item-0-5" /><a  onclick="treeChange(this.innerHTML)" >传感器</a>
							</li>
							<li><input type="checkbox"  id="item-0-6" /><a  onclick="treeChange(this.innerHTML)" >工业电源</a>
							</li>
							<li><input type="checkbox"  id="item-0-7" /><a onclick="treeChange(this.innerHTML)">二极管</a>
							</li>
							<li><input type="checkbox"  id="item-0-8" /><a onclick="treeChange(this.innerHTML)">保险元件</a>
							</li>
							<li><input type="checkbox"  id="item-0-9" /><a onclick="treeChange(this.innerHTML)">触控屏</a>
							</li>
							<li><input type="checkbox"  id="item-0-10" /><a onclick="treeChange(this.innerHTML)">播控设备</a>
							</li>
						</ul>
					</li>
					<li><input type="checkbox" id="item-1" checked="checked" /><label for="item-1">精选产品</label>
						<ul>
							<li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">最新提供</label>
								<ul>
									<li><a onclick="treeChange(this.innerHTML)">触控屏</a></li>
									<li><a onclick="treeChange(this.innerHTML)">继电器</a></li>
									<li><a onclick="treeChange(this.innerHTML)">传感器</a></li>
									<li><a onclick="treeChange(this.innerHTML)">工业电源</a></li>
								</ul>
							</li>
							
						</ul>
					</li>
					<li><input type="checkbox" checked="checked" id="item-2" /><label for="item-2">销量领先</label>
						<ul>
							<li><input type="checkbox"  id="item-2-0" /><label for="item-2-0">周销售榜</label>
								<ul>
									<li><a onclick="treeChange(this.innerHTML)">二极管</a></li>
									<li><a onclick="treeChange(this.innerHTML)">传感器</a></li>
									<li><a onclick="treeChange(this.innerHTML)">继电器</a></li>
									<li><a onclick="treeChange(this.innerHTML)">触控屏</a></li>
								</ul>
							</li>
							<li><input type="checkbox" id="item-2-1" /><label for="item-2-1">月销售榜</label>
								<ul>
									<li><a onclick="treeChange(this.innerHTML)">播控设备</a></li>
									<li><a onclick="treeChange(this.innerHTML)">保险元件</a></li>
									<li><a onclick="treeChange(this.innerHTML)">二极管</a></li>
									<li><a onclick="treeChange(this.innerHTML)">触控屏</a></li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="community-poll">
				<h4>问卷调查</h4>
				<div class="swit form">	
					<form>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio"  value='1' checked=""><i></i>更加清晰流畅的界面</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" value='2'><i></i>更低的价格</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" value='3'><i></i>更全的产品种类</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" value='4'><i></i>更广的供货区域</label> </div></div>
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" value='5'><i></i>更实惠的返利活动</label> </div></div>	
					<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio" value='6'><i></i>更便捷的支付</label> </div></div>
					<input class="reply" type="button" value="反馈给我们">
					</form>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-8 products-right">
			<h5>产品展示</h5>
			<div class="sort-grid">
				<div class="sorting">
					<h6>排序</h6>
					<select id="country1"  onchange="changeCountry(this.value)" class="frm-field required sect">
						<option value="1">默认排序</option>
						<option value="2">名称(A - Z)</option> 
						<option value="3">名称(Z - A)</option>
						<option value="4">价格(高 - 低)</option>
						<option value="5">价格(低 - 高)</option>	
						<option value="6">日期(新 - 旧)</option>
						<option value="7">日期(旧 - 新)</option>					
					</select>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="men-wear-top">
				<script src="/Factory/js/responsiveslides.min.js"></script>
				<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						 // Slideshow 4
						$("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
							}
							});
						});
				</script>
				<div  id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<img class="img-responsive" src="../images/men1.jpg" alt=" "/>
						</li>
						<li>
							<img class="img-responsive" src="../images/men2.jpg" alt=" "/>
						</li>
						<li>
							<img class="img-responsive" src="../images/men1.jpg" alt=" "/>
						</li>
						<li>
							<img class="img-responsive" src="../images/men2.jpg" alt=" "/>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="men-wear-bottom">
				<div class="col-sm-4 men-wear-left">
					<img class="img-responsive" src="../images/men3.jpg" alt=" " />
				</div>
				<div class="col-sm-8 men-wear-right">
					<h4>百度DuerOS智慧芯片发布</h4>
					<p>百度“万物语，智慧芯” DuerOS智慧芯片战略合作发布会在上海成功举办，会上，百度发布DuerOS智慧芯片，并与紫光展锐、ARM、上海汉枫达成战略合作，将人工智能赋能传统制造业，助力产业升级，完善智能物联网生态，开启“可对话”智慧设备时代。</p>
				</div>
				<div class="clearfix"></div>
			</div>
			   <div class="selectPage">
				</div>
				<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
		<div class="single-pro">
			
			
			<div class="clearfix"></div>
		</div>
<script> 
    $('.loading').animate({'width':'66%'},100);  //第一个进度节点 
</script>
		
		<div class="pagination-grid text-right">
			<ul class="pagination"id="pageUl"></ul>
		</div> 
	</div>
</div>	
<!-- //mens -->
<!-- //product-nav -->


<!-- footer -->
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
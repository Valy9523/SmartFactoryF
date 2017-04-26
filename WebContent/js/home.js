
 $(function(){
	  function productHome(){
		  $.ajax({
			  url:"/Factory/search/homeProduct.do",
			  dataType:'json',
			  success:function(result){
				  if(result){
           		    var rsList = new Array();
           		    var rsList2 = new Array();
           		    var rsList3 = new Array();
					$.each(result.eList,function(k,v){
						  var div = "<div class='col-md-3 product-men yes-marg'>"
									+"<div class='men-pro-item simpleCart_shelfItem'>"
									+	"<div class='men-thumb-item'>"
									+		"<img src='/Factory/images/"+v.path1+"' alt='' class='item_image pro-image-front'>"
									+		 "<img src='/Factory/images/"+v.path1+"' alt='' class='pro-image-back'>"
									+			"<div class='men-cart-pro'>"
									+				"<div class='inner-men-cart-pro'>"
									+							"<a href='/Factory/search/detail.do?table="+v.table+"&name="+v.name+"' class='link-product-add-cart'>详情</a>"
									+				"</div>"
									+			"</div>"
									+			"<span class='product-new-top'>New</span>"
									+   "<a class='item_table' style='display:none;'>"+v.table+"</a>"
									+	"</div>"
									+	"<div class='item-info-product '>"
									+		"<h4><a href='single.html' class='item_name'>"+v.name+"</a></h4>"
									+		"<div class='info-product-price'>"
									+			"<span class='item_price'>¥"+v.price+"</span>"
									+			"<del>¥"+v.delPrice+"</del>"
									+		"</div>"
									+		"<a href='javascript:;' class='item_add single-item hvr-outline-out button2'>加入购物车</a>"									
									+	"</div>"
									+"</div>"
					                +"</div>"
					                rsList.push(div);
								}) 
					$.each(result.eList2,function(k,v){
						  var div2 = "<div class='col-md-3 product-men yes-marg'>"
									+"<div class='men-pro-item simpleCart_shelfItem'>"
									+	"<div class='men-thumb-item'>"
									+		"<img src='/Factory/images/"+v.path1+"' alt='' class='item_image pro-image-front'>"
									+		 "<img src='/Factory/images/"+v.path1+"' alt='' class='pro-image-back'>"
									+			"<div class='men-cart-pro'>"
									+				"<div class='inner-men-cart-pro'>"
									+							"<a href='/Factory/search/detail.do?table="+v.table+"&name="+v.name+"' class='link-product-add-cart'>详情</a>"
									+				"</div>"
									+			"</div>"
									+			"<span class='product-new-top'>New</span>"
									+   "<a class='item_table' style='display:none;'>"+v.table+"</a>"
									+	"</div>"
									+	"<div class='item-info-product '>"
									+		"<h4><a href='single.html' class='item_name'>"+v.name+"</a></h4>"
									+		"<div class='info-product-price'>"
									+			"<span class='item_price'>¥"+v.price+"</span>"
									+			"<del>¥"+v.delPrice+"</del>"
									+		"</div>"
									+		"<a href='javascript:;' class='item_add single-item hvr-outline-out button2'>加入购物车</a>"									
									+	"</div>"
									+"</div>"
					                +"</div>"
					                rsList2.push(div2);
								}) 
					$.each(result.eList3,function(k,v){
						  var div3 = "<div class='col-md-3 product-men yes-marg'>"
									+"<div class='men-pro-item simpleCart_shelfItem'>"
									+	"<div class='men-thumb-item'>"
									+		"<img src='/Factory/images/"+v.path1+"' alt='' class='item_image pro-image-front'>"
									+		 "<img src='/Factory/images/"+v.path1+"' alt='' class='pro-image-back'>"
									+			"<div class='men-cart-pro'>"
									+				"<div class='inner-men-cart-pro'>"
									+							"<a href='/Factory/search/detail.do?table="+v.table+"&name="+v.name+"' class='link-product-add-cart'>详情</a>"
									+				"</div>"
									+			"</div>"
									+			"<span class='product-new-top'>New</span>"
									+   "<a class='item_table' style='display:none;'>"+v.table+"</a>"
									+	"</div>"
									+	"<div class='item-info-product '>"
									+		"<h4><a href='single.html' class='item_name'>"+v.name+"</a></h4>"
									+		"<div class='info-product-price'>"
									+			"<span class='item_price'>¥"+v.price+"</span>"
									+			"<del>¥"+v.delPrice+"</del>"
									+		"</div>"
									+		"<a href='javascript:;' class='item_add single-item hvr-outline-out button2'>加入购物车</a>"									
									+	"</div>"
									+"</div>"
					                +"</div>"
					                rsList3.push(div3);
								}) 	
					
					$(".NewPage").empty();
					for (i=0;i<=rsList.length;i++){
						$(".NewPage").append(rsList[i]);
					}
					$(".SpecialPage").empty();
					for (i=0;i<=rsList2.length;i++){
						$(".SpecialPage").append(rsList2[i]);
					}
					$(".LeftPage").empty();
					for (i=0;i<=rsList3.length;i++){
						$(".LeftPage").append(rsList3[i]);
					}
				  }
				  else{
					  alert('没有查找到产品数据。')
				  }
			  },
			  error : function(){
				 alert('出错了。') 
			  }
		  })
	  }	
	  productHome();
 });
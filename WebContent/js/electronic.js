 var order = 1,
     goPage = null,
     changeCountry = function(value){
	   order=value;
	   goPage(lastCount);
     },
    treeChange = function(avalue){
	type = avalue;
	goPage(1);
    },
   lastCount = 0;
 $(function(){
		var pages = 0;
		goPage=function(page){
			lastCount = page;
			var MAXRESULT = 11;
			var titleTotal = 0;
			var _date = {
					'page':page,
					'order':order,
					'type':type,
					'table':table,
					'name':name
			};

			$.ajax({
				url : "/Factory/search/getSelect.do",
				data:_date,
				dataType:'json',
				success : function(result){
					if(result.rs.length>0){
						var rsList1 = new Array();
						var rsList2 = new Array();
						titleTotal= result.total;
						$.each(result.rs, function (k, v) {
							if(k<=2){
							var div="<div class='col-md-4 product-men no-pad-men'>"
							+"<div class='men-pro-item simpleCart_shelfItem'>"
							+	"<div class='men-thumb-item'>"
							+		"<img src='../images/"+v.path1+"'  alt='' class='item_image pro-image-front'>"
							+		 "<img src='../images/"+v.path1+" ' alt='' class='pro-image-back'>"
							+					"<div class='men-cart-pro'>"
							+						"<div class='inner-men-cart-pro'>"
							+							"<a href='/Factory/search/detail.do?table="+table+"&name="+v.name+"' class='link-product-add-cart'>详情</a>"
							+						"</div>"
							+					"</div>"
							+					"<span class='product-new-top'>New</span>"
							+   "<a class='item_table' style='display:none;'>"+v.table+"</a>"
							+	"</div>"
							+	"<div class='item-info-product '>"
							+				"<h4><a href='/Factory/search/detail.do?table="+table+"&name="+v.name+"' class='item_name'>"+v.name+"</a></h4>"
							+				 "<div class='info-product-price'>"
							+					"<span class='item_price'>¥"+v.price+"</span>"
							+					"<del>¥"+v.delPrice+"</del>"
							+				"</div>"
							+				"<a href='javascript:;' class='item_add single-item hvr-outline-out button2'>加入购物车</a>"									
							+	"</div>"
							+ "</div>"
						    +"</div>"
							rsList1.push(div);
							}
							else{
				     var div2 =  "<div class='col-md-3 product-men yes-marg'>"
							+"<div class='men-pro-item simpleCart_shelfItem'>"
							+	"<div class='men-thumb-item'>"
							+		"<img src='../images/"+v.path1+"' alt='' class='item_image pro-image-front'>"
							+		 "<img src='../images/"+v.path1+"' alt='' class='pro-image-back'>"
							+			"<div class='men-cart-pro'>"
							+				"<div class='inner-men-cart-pro'>"
							+							"<a href='/Factory/search/detail.do?table="+table+"&name="+v.name+"' class='link-product-add-cart'>详情</a>"
							+				"</div>"
							+			"</div>"
							+			"<span class='product-new-top'>New</span>"
							+   "<a class='item_table' style='display:none;'>"+v.table+"</a>"
							+	"</div>"
							+	"<div class='item-info-product '>"
							+		"<h4><a href='/Factory/search/detail.do?table="+table+"&name="+v.name+"' class='item_name'>"+v.name+"</a></h4>"
							+		"<div class='info-product-price'>"
							+			"<span class='item_price'>¥"+v.price+"</span>"
							+			"<del>¥"+v.price+"</del>"
							+		"</div>"
							+		"<a href='javascript:;' class='item_add single-item hvr-outline-out button2'>加入购物车</a>"									
							+	"</div>"
							+"</div>"
			                +"</div>"
			                rsList2.push(div2);
							}
						});
						$(".selectPage").empty();
						for (i=0;i<=rsList1.length;i++){
							$(".selectPage").append(rsList1[i]);
						}
						$(".single-pro").empty();
						for (i=0;i<=rsList2.length;i++){
							$(".single-pro").append(rsList2[i]);
						}
						pages = Math.ceil(titleTotal / MAXRESULT);
						var options = {
								bootstrapMajorVersion: 3,  
								currentPage: page,
								numberOfPages: 3,
								totalPages: pages, 
								onPageClicked: function (event, originalEvent, type, page) {
									if(page != lastCount){
										goPage(page);
									}
								},
								shouldShowPage: function (type, page, current) {
									return true;
								},  
						}
						$('#pageUl').bootstrapPaginator(options);
						$("#totalPageC").text(pages);
						name='';
					}
					else{
						$(".selectPage").empty();
						$(".single-pro").empty();
						alert('暂无本产品');
						name='';
					}
				},
				error : function() {
					$(".selectPage").empty();
					$(".single-pro").empty();
					alert('出错了！');
				}
			});
		}
	
		goPage(1);
		
		$(document).on('click','#jumpBtn',function(){
			var pageCount = $('#pageCount').val();
			if(pageCount == ''){
				alert('请输入页码!')
			}
			else if(pageCount>pages){
				alert('最大页数为：'+pages);
				$('#pageCount').val(pages);
			}
			else if((pageCount%1>0&&pageCount%1<1)||pageCount<0){
				alert("请输入正整数!");
				$('#pageCount').val("");
			}
			else if(pageCount != lastCount){
				goPage(pageCount);
			}

		})
		$(document).on('keydown','#pageCount',function(e){
			if(e.keyCode==13){
				$('#jumpBtn').click();
			}
		});
	    $("#country").val(table);
		$("#search").val(name);
   });

 
 
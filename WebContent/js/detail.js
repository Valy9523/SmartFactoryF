   

    $(document).on('click',".checkPcode",function(){
    	var ss=$('.pcode').val();
    	var msg = $('#pcode_msg');
    	var re= /^[1-9][0-9]{5}$/;
    		if(re.test(ss)){
    			msg.text("*您所在区域属于可以享受免费物流。");
    		}
    		else{
    			msg.text("*邮编格式错误，或者不属于免费配送区域。");
    			}   
    })



   $(document).on('click',".addreview",function(){
	   var reviewName = $('.reviewName').val();
	   var reviewEmail = $('.reviewEmail').val();
	   var reviewContent = $('.reviewContent').val();
	   var _data={
			   "reviewName":reviewName,
			   "reviewEmail":reviewEmail,
			   "reviewContent":reviewContent,
			   "pName":pName
	   };
	   $.ajax({
		   url:"/Factory/reviewAndSurvey/addReview.do",
	       dataType:'json',
	       data:_data,
	       success:function(result){
	    	   if (result.status=='success') {
	    		   alert('已成功提交。');
	    		   loadReview();
			    }
	    	   else{
	    		   alert('提交失败，请确保您的评论内容填写正确。'); 
	    	   }
	    	   
	       },
	       error:function(){
	    	   alert('error'); 
	       }
	   })
   })
   
   var loadReview = null;
   $(function() {
	 var reviewCount = 0 ;
	 loadReview = function(){
		   $.ajax({
			   url:"/Factory/reviewAndSurvey/loadReview.do?pName="+pName,
		       dataType:'json',
		       success:function(result){
		    	   if (result.count) {
		    		   reviewCount = result.count+1;
		    		   $(".loadReview").text( "评论("+reviewCount+")");
				   }
		    	   if (result.reList) {
		    		   var itList = new Array();
		    	$.each(result.reList,function(k,v){
		    		var item = "<div class='bootstrap-tab-text-grid'>"
		    			+	        "<div class='bootstrap-tab-text-grid-left'>"
		    			+			"<img src='../images/men3.jpg' alt='' class='img-responsive'>"
		    			+		"</div>"
		    			+		"<div class='bootstrap-tab-text-grid-right'>"
		    			+			"<ul>"
		    			+				"<li><a href='javascript:;'>"+v.reviewName+"</a></li>"
		    			+			"</ul>"
		    			+			"<p>"+v.reviewContent+"</p>"
		    			+		"</div>"
		    			+   "<div class='clearfix'> </div>"
		    			+	"</div>";
		    		    itList.push(item);
		    	})	   
				   $(".reviewRoom").empty();
		    	   for (var i = 0; i < itList.length; i++) {
		    		   $(".reviewRoom").append(itList[i]);
				   }
		    	   
		    	   }
		    	   else{
		    		   $(".reviewRoom").empty();
		    		   alert('失败.'); 
		    	   }
		    	   
		       },
		       error:function(){
		    	   $(".reviewRoom").empty();
		    	   alert('error'); 
		       }
		   })
	 }
    loadReview();
   
   
   })



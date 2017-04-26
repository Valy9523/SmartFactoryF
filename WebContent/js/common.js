   
   $(document).on('click',".reply",function(){
	   var id=$("input[type='radio']:checked").val(); 
	   $.ajax({
		   url:"/Factory/reviewAndSurvey/replySurvey.do?id="+id,
		   dataType:'json',
		   success:function(result){
			   if(result.status='success'){
				   alert('我们已经收到您的反馈')
			   }
			   else{
				   alert('提交失败，请稍后重试。')
			   }
		   },
	       error:function(){
			 alert('出错了！')
		 }
	   })
	   
   })
	  
   $(document).on('click',".sear-sub",function(){
	
			var table = $("#country").val();
			
			var name = $("#search").val();
			
			
			if(table!='home'){
				window.location.href="/Factory/search/searchCommon.do?table="+table+"&name="+name;
			}
			else if(table='home'&&name==''){
				alert('检索所有种类时，请务必输入关键词...')
			}
			else{
				window.location.href="/Factory/search/allSearch.do?name="+name;
			}
			
	})
    var eclick =function(type){
	   window.location.href="/Factory/search/searchCommon.do?table=elec_device&type="+type;
   }
    var bclick = function(type){
 	   window.location.href="/Factory/search/searchCommon.do?table=build_mater&type="+type;
    } 
    
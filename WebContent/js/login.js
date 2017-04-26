
function checkCreate(checked){
	if (checked) {
		$("#createUser").attr('disabled',false);
	}
	else{
		$("#createUser").attr('disabled',true);
	}
	
}
function CheckInput(o ,sType){
		var msg=document.getElementById(o.id + '_msg');
		//用户名
		if(sType=='username'){
		msg.innerHTML=(!/^[a-z0-9]{4,20}$/gi.test(o.value))? o.title : '';
		}
		//密码
		if(sType=='password'){
		msg.innerHTML=(!/^[\S]{6,20}$/gi.test(o.value))? o.title : '';
		}
		if(sType=='email'){
	    msg.innerHTML=(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/gi.test(o.value))? o.title : '';
		}
		if(sType=='companyName'){
		    msg.innerHTML=(o.value=='')? o.title : '';
			}
		if(sType=='confPassword'){
		    msg.innerHTML=($("#password").val()!=o.value)? o.title : '';
		}
		}





$(function(){
	
	$("#login").on('click',function(){
		var userName = $("#username").val();
		var password = $("#password").val();
		if(userName==''||password==''){
			alert("用户名或密码不能为空！")
		}
		else {
			$.post("/Factory/login/login.do",{"userName":userName,
	            "password":password},function(data){
	         if(data.status == 'success'){
	             window.location="/Factory/login/home.do";                  	  
	                }
	         else{
	            alert('用户名或密码错误。');
	             }
	             })
		}
	})
	$("#createUser").on('click',function(){
		var userName = $("#username").val();
		var password = $("#password").val();
		var email = $("#email").val();
		var companyName = $("#companyName").val();
		var _data={
				"userName":userName,
				"password":password,
				"email":email,
				"companyName":companyName
		};
		if(userName==''||password==''||email==''||companyName==''){
			alert("请保证信息完整，所填内容不能为空！")
		}
		else{
			$.post("/Factory/login/createUser.do",_data,function(data){
				if(data.status == 'success'){
					alert('添加成功。');                 	  
				}
				else if(data.status == 'exited'){
					alert('添加失败，用户名已存在。');
				}
				else {
					alert('添加失败，请核对您的信息。')
				}
			})
		}
	
	})
	
	
});
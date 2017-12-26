/*获取cookie*/
$(function() { 
	//获取cookie中的用户名    
	var username = $.cookie("username");
	//获取cookie中的登陆密码
    var password = $.cookie("password");     
    if(password){
    	//密码存在的话把“记住用户名和密码”复选框勾选住    
    	$("#rememberMe").attr("checked","true");    
    }    
    if(username){
    	//用户名存在的话把用户名填充到用户名文本框 
    	$("input[name='username']").val(username);    
    }    
    if(password){
    	//密码存在的话把密码填充到密码文本框    
    	$("input[name='password']").val($.base64.decode(password));
    }    
});
/*end*/

/*Jquery响应回车键直接提交表单操作代码*/
$(document).keyup(function(event){
  if(event.keyCode ==13){
    $("#submit").trigger("click");
  }
});
/*end*/

$("#submit").click(function() {

	//是否强制登陆的标志，默认no
	var force = "no";
	var username = $("input[name='username']").val();
	var password = $("input[name='password']").val();
	var rememberMe = $('#rememberMe').is(':checked');
	var user = {
		"username":username,
		"password":password
	};
	$.ajax({
	    type : "post",
		url : "/embs/user/login",
		data : {
			"user":JSON.stringify(user),
			"force":force
		},
		async : true,
		success : function(data) {
			var msg = JSON.parse(data);
			if(msg=="验证通过"){
				/*设置cookie*/
				if(rememberMe){  
					//调用jquery.cookie.js中的方法设置cookie中的用户名
		            $.cookie("username",username,{ path: '/', expires: 7 });  
		            //调用jquery.cookie.js中的方法设置cookie中的登陆密码，并使用base64加密
		            $.cookie("password",$.base64.encode(password),{ path: '/', expires: 7 });
		         }else{     
		            $.cookie("password", null, { path: '/' });     
		         }
				/*end*/
				window.location.href="/embs/netmarkets/jsp/main/index.jsp";
			}else if(msg=="该账号已登陆"){
				$.confirm({
	            	title: "提示！",
	            	keyboardEnabled: true,
	                content: '该账号已在其他地方登陆, 是否强制下线?',
	                confirmButton: "确认",
	            	cancelButton: "取消",
	                confirm: function () {
	                	force = "yes";
						$.ajax({
				    	    type : "post",
				    		url : "/embs/user/login",
				    		data : {
				    			"user":JSON.stringify(user),
				    			"force":force
							},
				    		async : true,
				    		success : function(data) {
				    			var msg = JSON.parse(data);
				    			if(msg=="验证通过"){
				    				window.location.href="/embs/netmarkets/jsp/main/index.jsp";
				    			}else{
				    				$.alert({
			                    		title: false,
			                    		keyboardEnabled: true,
			                    		content:''+JSON.parse(data),
			                    		confirmButton: "确认",
			                    	});
				    			}
				    		}
				    	});
	                },
	                cancel: function () {
	                    
	                }
	            });
			}else{
				$.alert({
            		title: false,
            		content:''+JSON.parse(data),
            		confirmButton: "确认",
            	});
			}
		}
	});

});
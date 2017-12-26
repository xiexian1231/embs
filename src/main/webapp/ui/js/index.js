$('#changePassword').on('click', function () {
    $.confirm({
    	title: false,
    	keyboardEnabled: true,
        content: '*旧密码<input id="oldpwd" type="password" class="form-control" placeholder="请输入旧密码"/>*新密码<input id="newpwd" type="password" class="form-control" placeholder="请输入新密码"/>*确认新密码<input id="confirm" type="password" class="form-control" placeholder="请再次输入新密码"/>',
        confirmButton: "确认",
    	cancelButton: "取消",
    	confirm: function () {
    		var patrn = /^(\w){3,20}$/;
    		var username = $("#primaryName").text();
    		var oldpwd = $("#oldpwd").val();
    		var newpwd = $("#newpwd").val();
    		var confirm = $("#confirm").val();
    		var user = {
    				"username":username,
    				"oldpwd":oldpwd,
    				"newpwd":newpwd,
    				"confirm":confirm
    			};
            if(!patrn.exec(oldpwd) || !patrn.exec(newpwd) || !patrn.exec(confirm)){
            	$.alert({
            		title: false,
            		keyboardEnabled: true,
            		content:'只能输入3-20个字母、数字、下划线的密码！',
            		confirmButton: "确认",
            	});
            }else{
            	$.ajax({
		    	    type : "post",
		    		url : "/embs/user/changePassword",
		    		data : {
		    			"user":JSON.stringify(user)
					},
		    		async : true,
		    		success : function(data) {
		    			var msg = JSON.parse(data);
		    			if(msg=="密码修改成功"){
		    				$.alert({
	                    		title: false,
	                    		keyboardEnabled: true,
	                    		content:'密码修改成功',
	                    		confirmButton: "确认",
	                    	});
		    			}else{
		    				$.alert({
	                    		title: false,
	                    		keyboardEnabled: true,
	                    		content:''+msg,
	                    		confirmButton: "确认",
	                    	});
		    			}
		    		}
		    	});
            }
        },
        cancel: function () {
        }
    });
});

$('#logout').on('click', function () {
	$.confirm({
	    title: '退出?',
	    keyboardEnabled: true,
	    content: '系统将在5秒后自动退出.',
	    autoClose: 'confirm|5000',
	    confirmButton: "确认",
    	cancelButton: "取消",
	    confirm: function(){
	    	window.location.href="/embs/user/logout";
	    },
	    cancel:function(){
	    }
	});
});
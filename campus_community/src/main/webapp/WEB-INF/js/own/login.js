// 登录
$(function() {
	var username = null;
	var loginBtn = $("#loginBtn");
	loginBtn.click(function() {
		var json = {
			u_nickname : $("#loginNickname").val(),
			u_password : $("#loginPassword").val(),
		};
		$.ajax({
			type : "post",
			url : "login.do",
			contentType : "application/json",
			data : JSON.stringify(json),
			dataType : "json",
			success : function(data) {
				username = data.username;
				alert(data.msg);
				if (data.msg == '登录失败') {
					window.location.href = "login";
				} else {
					$.cookie('username', username);
					window.location.href = "index";
				}
			},
			error : function(data) {
				alert(data.msg);
			}
		});

	});

});
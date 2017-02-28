/**
 * 检查用户名是否符合规则
 * @returns {Boolean}
 */
function checkUsername(){
	if($("#username").val().length<=0){
		alert("用户名不能为空");
        return false;
    }
	
	if($("#username").val().length<4){
        alert("用户名长度不能小于4位");
        return false;
    }
}

/**
 * 检测注册信息是否正确
 * 两次输入密码是否正确
 */
function checkREG(){
	
	checkUsername();
	var password = $("#password").val();
	var password2 = $("#reg_pwd2").val();
	if(password.length < 6){
		alert("密码长度不能小于6位");
		return false;
	}
	if(password != password2){
		alert("两次输入密码不一致");
		return false;
	}
	$("form")[0].submit();
}
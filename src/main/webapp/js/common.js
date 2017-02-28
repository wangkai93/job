/**
 * 使用ajax加载首页需要的数据
 */
function loadIndexData() {
	var contextUrl = "http://localhost:8080/job/";
	var nowUrl = document.URL;
	console.log("nowUrl = " + nowUrl);
	if (contextUrl == nowUrl) {
		$.ajax({
			type : "post",
			url : "/job/index/loaddata",
			cache : false,
			async : false,
			timeout: 1000, 
			dataType : "json",
			beforeSend: LoadFunction, //加载执行方法    
            error: erryFunction,  //错误执行方法    
            success: succFunction //成功执行方法    
		});
	}
}
function LoadFunction() {  
    //$("#list").html('加载中...');  
}  
function erryFunction() {  
    alert("error");  
}  
function succFunction(tt) {  
    $("#list").html('');  

    //eval将字符串转成对象数组  
    //var json = { "id": "10086", "uname": "zhangsan", "email": "zhangsan@qq.com" };  
    //json = eval(json);  
    //alert("===json:id=" + json.id + ",uname=" + json.uname + ",email=" + json.email);  

    var json = eval(tt); //数组     
    var news = json['news'];
    var jobs = json['jobs'];
    var resumes = json['resumes'];
    var guestBooks = json['guestBooks'];
    
    
    $.each(news, function (index, item) {  
        //循环获取数据    
    	var id = news[index].id;
        var title = news[index].title;  
        $("#news").html($("#news").html() + "<tr><td><a href='news/show/"+id+"'>" + title + "</a></td></tr>"); 
    });  
    
    $.each(jobs, function (index, item) {  
        //循环获取数据    
    	var id = jobs[index].id;
        var danwei = jobs[index].danwei;  
        var need = jobs[index].need;  
        $("#jobs").html($("#jobs").html() + "<tr><td><a href='job/show/"+id+"'>" + danwei + " 招聘---> " + need + "</a></td></tr>"); 
    }); 
    
    $.each(resumes, function (index, item) {  
        //循环获取数据    
    	var id = resumes[index].id;
        var job = resumes[index].job;  
        var linkman = resumes[index].linkman;  
        $("#resumes").html($("#resumes").html() + "<tr><td><a href='resume/show/"+id+"'>" + linkman + " 要找---> " + job + "</a></td></tr>");  
    }); 
    
    $.each(guestBooks, function (index, item) {  
        //循环获取数据    
    	var id = guestBooks[index].id;
        var nickname = guestBooks[index].nickname;  
        var content = guestBooks[index].content;  
        $("#guestBooks").html($("#guestBooks").html() + "<tr><td><a href='guestbook/show/"+id+"'>" + nickname + " - " + content + "</a></td></tr>");  
    }); 
}  
/**
 * 校验登录信息
 */
function checkLoginInfo() {
	if ($("#username").val().replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请输入您的用户名！");
		document.loginform.username.focus();
		return false;
	}
	if ($("#username").val().replace(/\s+$|^\s+/g, "").length < 4
			|| $("#username").val().replace(/\s+$|^\s+/g, "").length > 10) {
		alert("\用户名长度在4-10位之间！");
		document.loginform.username.focus();
		return false;
	}
	if ($("#password").val().replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请输入您的密码！");
		document.loginform.password.focus();
		return false;
	}
	if ($("#password").val().replace(/\s+$|^\s+/g, "").length < 6
			|| $("#password").val().replace(/\s+$|^\s+/g, "").length > 16) {
		alert("\密码长度在6-16位之间！");
		document.loginform.password.focus();
		return false;
	}
	if ($("#checkCode").val().replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请输入验证码！");
		changeCheckNum();
		document.loginform.username.focus();
		return false;
	}
	regbb.submit();
}

// 错误信息反馈
function checkreport() {
	if (document.form1.address.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("请填写错误页面地址！");
		document.form1.address.focus();
		return false;
	}
	if (document.form1.resouce.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("请填写错误原因！");
		document.form1.resouce.focus();
		return false;
	}
	if (document.form1.resouce.value.replace(/\s+$|^\s+/g, "").length > 200) {
		alert("内容请限制在200个字以内！");
		document.form1.resouce.focus();
		return false;
	}
	form1.method.value = "add";
	form1.submit();
}
// 申请友情链接
function checklink() {
	if (document.form1.linkname.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("请填写链接名称！");
		document.form1.linkname.focus();
		return false;
	}
	if (document.form1.url.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("请填写链接地址！");
		document.form1.url.focus();
		return false;
	}
	if (document.form1.logo.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("请填写logo地址！");
		document.form1.logo.focus();
		return false;
	}
	if (document.form1.intro.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("请填写链接描述！");
		document.form1.intro.focus();
		return false;
	}
	if (document.form1.intro.value.replace(/\s+$|^\s+/g, "").length > 200) {
		alert("描述内容请限制在200个字以内！");
		document.form1.intro.focus();
		return false;
	}
	form1.method.value = "addlink";
	form1.submit();
}
// 验证留言板输入
function checkGUEST() {
	if (document.form1.content.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("请输入留言内容！");
		document.form1.content.focus();
		return false;
	}
	if (document.form1.content.value.replace(/\s+$|^\s+/g, "").length > 200) {
		alert("留言内容不能超过200个字！");
		document.form1.content.focus();
		return false;
	}
}

// 检验注册表单的合法性 reg2.jsp
function checkREG() {
	if (document.regbb.username.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请输入您的用户名！");
		document.regbb.username.focus();
		return false;
	}
	if (document.regbb.username.value.replace(/\s+$|^\s+/g, "").length < 4
			|| document.regbb.username.value.replace(/\s+$|^\s+/g, "").length > 10) {
		alert("\用户名长度在4-10位之间！");
		document.regbb.username.focus();
		return false;
	}
	if (document.regbb.password.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请输入您的密码！");
		document.regbb.password.focus();
		return false;
	}
	if (document.regbb.password.value.replace(/\s+$|^\s+/g, "").length < 6
			|| document.regbb.password.value.replace(/\s+$|^\s+/g, "").length > 16) {
		alert("\密码长度在6-16位之间！");
		document.regbb.password.focus();
		return false;
	}
	if (document.regbb.reg_pwd2.value == "") {
		alert("\请再次输入您的密码！");
		document.regbb.reg_pwd2.focus();
		return false;
	}
	if (document.regbb.password.value != document.regbb.reg_pwd2.value) {
		alert("\您两次输入的密码不同！");
		document.regbb.reg_pwd2.focus();
		return false;
	}
	regbb.method.value = "reg2";
	regbb.submit();
}
function sameREGcheck() {
	if (document.regbb.username.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请输入您的用户名！");
		document.regbb.username.focus();
		return false;
	} else if (document.regbb.username.value.replace(/\s+$|^\s+/g, "").length < 4
			|| document.regbb.username.value.replace(/\s+$|^\s+/g, "").length > 10) {
		alert("\用户名长度在4-10位之间！");
		document.regbb.username.focus();
		return false;
	}
	regbb.method.value = "checksame";
	regbb.submit();
}

// 个人会员注册完善资料验证
function checkpersonreg() {
	if (document.regform.realname.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写您的真实姓名！");
		document.regform.realname.focus();
		return false;
	}
	if (document.regform.sheng.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请选择省！");
		document.regform.sheng.focus();
		return false;
	}
	if (document.regform.city.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请选择所在城市！");
		document.regform.city.focus();
		return false;
	}
	if (document.regform.tel.value.replace(/\s+$|^\s+/g, "").length < 7) {
		alert("\请正确填写您的联系电话，号码在七位以上，只能为数字！");
		document.regform.tel.focus();
		return false;
	}
	if (document.regform.email.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写您的邮箱！");
		document.regform.email.focus();
		return false;
	}
	if (!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(document.regform.email.value)) {
		alert("请输入格式正确的 e-mail 地址！");
		document.regform.email.focus();
		return false;
	}
	if (document.regform.question.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写密码提示问题！");
		document.regform.question.focus();
		return false;
	}
	if (document.regform.answer.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写密码保护答案！");
		document.regform.answer.focus();
		return false;
	}
	if (document.regform.question.value == document.regform.answer.value) {
		alert("\密码保护提示问题和答案不能一样！");
		document.regform.answer.focus();
		return false;
	}
	regform.submit();
}
// 验证企业会员注册资料
function checkcoreg() {
	if (document.reg.coname.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写公司名称！");
		document.reg.coname.focus();
		return false;
	}
	if (document.reg.address.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写公司地址！");
		document.reg.address.focus();
		return false;
	}
	if (document.reg.postnum.value.replace(/\s+$|^\s+/g, "").length > 0
			&& document.reg.postnum.value.replace(/\s+$|^\s+/g, "").length != 6) {
		alert("\邮政编码为六位数字！");
		document.reg.postnum.focus();
		return false;
	}
	if (document.reg.tel.value.replace(/\s+$|^\s+/g, "").length < 7) {
		alert("\请正确填写您的联系电话，号码在七位以上，只能为数字！");
		document.reg.tel.focus();
		return false;
	}
	if (document.reg.email.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写您的邮箱！");
		document.reg.email.focus();
		return false;
	}
	if (!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(document.reg.email.value)) {
		alert("请输入格式正确的 e-mail 地址！");
		document.reg.email.focus();
		return false;
	}
	if (document.reg.question.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写密码提示问题！");
		document.reg.question.focus();
		return false;
	}
	if (document.reg.answer.value.replace(/\s+$|^\s+/g, "").length <= 0) {
		alert("\请填写密码保护答案！");
		document.reg.answer.focus();
		return false;
	}
	if (document.reg.question.value == document.reg.answer.value) {
		alert("\密码保护提示问题和答案不能一样！");
		document.reg.answer.focus();
		return false;
	}
	if (document.reg.intro.value.replace(/\s+$|^\s+/g, "").length > 500) {
		alert("\公司介绍在500字以内！");
		document.reg.intro.focus();
		return false;
	}
	reg.submit();
}

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>管理中心登陆 V1.0</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="../css/admin.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.2.js"></script>
<script type="text/javascript">
/**
 * 改变验证码
 */
function changeCheckNum() {
	var checkNumImage_ = document.getElementById("checkNumImage");
	checkNumImage_.src = "${pageContext.request.contextPath}/image.jsp?timeStamp="
			+ new Date().getTime();
}

function checkSubmit(){
    if($("#username").val().length<=0){
        alert("登陆的用户名不能为空");
        return false;
    }
    if($("#password").val().length<=0){
        alert("登陆的密码不能为空");
        return false;
    }
  	if($("#checkCode").val().length<=0){
        alert("验证码不能为空");
        return false;
    }
    document.forms[0].submit();
  }


</script>
</HEAD>
<BODY onload=document.form1.username.focus();>
	<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%"
		bgColor=#002779 border=0>
		<TR>
			<TD align=middle>
				<TABLE cellSpacing=0 cellPadding=0 width=468 border=0>
					<TR>
						<TD><IMG height=23 src="../img/login_1.jpg" width=468></TD>
					</TR>
					<TR>
						<TD><IMG height=147 src="../img/login_2.jpg" width=468></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=468 bgColor=#ffffff
					border=0>
					<TR>
						<TD width=16><IMG height=122 src="../img/login_3.jpg"
							width=16></TD>
						<TD align=middle>
							<TABLE cellSpacing=0 cellPadding=0 width=280 border=0>
								<FORM name=form1 action="${pageContext.request.contextPath }/admin/login" method=post>
									<TR height=5>
										<TD width=5></TD>
										<TD width=56></TD>
										<TD><font color="#ff0000">${loginError }</font></TD>
									</TR>
									<TR height=36>
										<TD></TD>
										<TD>用户名</TD>
										<TD><INPUT
											style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid"
											maxLength=30 size=24 id=username name=username></TD>
									</TR>
									<TR height=36>
										<TD>&nbsp;</TD>
										<TD>口&nbsp;&nbsp;&nbsp;令</TD>
										<TD><INPUT
											style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid"
											type=password maxLength=30 size=24 id=password name=password></TD>
									</TR>
									<TR height=36>
										<TD>&nbsp;</TD>
										<TD>验证码</TD>
										<TD><INPUT
											style="BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid"
											type=text maxLength=4 size=10 id=checkCode name=checkCode>&nbsp;&nbsp;<IMG id="checkNumImage" src="../image.jsp" border=0 height="19" align="absmiddle" onClick="changeCheckNum()" 
			  	           title="点击换一张" style="cursor:hand"><font color="#ff0000">${checkCodeError }</font></TD>
									</TR>
									<TR height=5>
										<TD colSpan=3></TD>
									</TR>
									<TR>
										<TD>&nbsp;</TD>
										<TD>&nbsp;</TD>
										<TD><INPUT type=image height=18 width=70
											src="../img/bt_login.gif" onclick="checkSubmit();"></TD>
									</TR>
								</FORM>
							</TABLE>
						</TD>
						<TD width=16><IMG height=122 src="../img/login_4.jpg"
							width=16></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=468 border=0>
					<TR>
						<TD><IMG height=16 src="../img/login_5.jpg" width=468></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=468 border=0>
					<TR>
						<TD align=right><A href="http://www.865171.cn/" target=_blank><IMG
								height=26 src="../img/login_6.gif" width=165 border=0></A></TD>
					</TR>
				</TABLE>
			</TD>
		</TR>
	</TABLE>
</BODY>
</HTML>

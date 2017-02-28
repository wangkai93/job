<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<HTML><HEAD>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath }/js/Common.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=yes marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
	<form action="${pageContext.request.contextPath }/user/updatecom" method="post" name="reg" >
	<INPUT type="hidden" name=id  value="${com.id }"> 
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD colspan="2" height=23>修改会员资料  <FONT color="#FF0000">**</FONT>为必填写字段</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >公司名称：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=50 size=30 name=coname  value="${com.coname }"> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >公司地址：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=100 size=30 name=address value="${com.address }"> <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >邮政编码：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=6 size=30 name=postnum onKeyUp="this.value=this.value.replace(/\D/gi,'')"  value="${com.postnum }"> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联系电话：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb name=telphone maxLength=18 size=30  onkeyup="this.value=this.value.replace(/\D/gi,'')"  value="${com.telphone }"> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >E-mail：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb  name=email maxLength=50 size=30  value="${com.email }"> <FONT color=#ff0000>**</FONT> <FONT color=#ff6600>(此电子邮件非常重要，请认真填写！）</FONT>
			</TD>
		  </TR>
		   <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >密码提示问题：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=28 size=30 name=question  value="${com.question }"> <FONT color=#ff0000>**</FONT> 需要找回密码的时候,提示的问题“您叫什么名字？”
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >问题回答：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=28 size=30  name=answer value="${com.answer }"> <FONT color=#ff0000>**</FONT> 您自设问题的答案,如您的答案是“小黄”
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >公司简介：</TD>
			<TD width="70%" align="left" id=map>
			<TEXTAREA id=intro name=intro rows=6 cols=45>${com.intro }</TEXTAREA> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD colspan="2" align="center" ><input type="button" value="提交" onclick="checkcoreg()">&nbsp;&nbsp;<input type="reset" value="重填"></TD>
		  </TR>
		</TBODY>
	   </TABLE>
	  </form>
    </TD>
  </TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>

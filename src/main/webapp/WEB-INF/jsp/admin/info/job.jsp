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
    <TD align="center" vAlign=top >
	<form action="${pageContext.request.contextPath }/job/add" method="post" name="form1" onSubmit="return checkaddjob()">
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD colspan="2" height=23>发布招聘信息 <FONT color="#FF0000">**</FONT>为必填写字段</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >招聘职位：</TD>
			<TD width="70%" align="left" id=map><input type="hidden" name="action" value=""><input type="hidden" name="id" value="">
			<INPUT class=inputb maxLength=30 size=30 name=need value=""> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >招聘人数：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=5 size=5 name=num value="" onkeyup="this.value=this.value.replace(/\D/gi,'')"> <FONT color=#ff0000>**</FONT>  
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >招聘单位：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=danwei value=""> <FONT color=#ff0000>**</FONT>  
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联 系 人：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=linkman value=""> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联系电话：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=tel value=""> <FONT color=#ff0000>**</FONT></TD>
		  </TR>
		   <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >工作地点：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=60 size=60 name=place  value="" >  <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >工资待遇：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=pay  value="" >  <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >有效期限：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=5 size=5  name=yxq value="" onkeyup="this.value=this.value.replace(/\D/gi,'')"> 天 <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >招聘要求：</TD>
			<TD width="70%" align="left" id=map>
			<textarea name=otherneed rows=8 cols=60 ></textarea>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD colspan="2" align="center" ><input type="submit" value="提交">&nbsp;&nbsp;
			<input type="button" value="返回" onClick="javascript: history.go(-1)"> <input type="reset" value="重填"></TD>
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

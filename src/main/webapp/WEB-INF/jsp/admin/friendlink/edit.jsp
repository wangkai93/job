<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="/images/Common.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 
background=/images/MainBg.gif topMargin=0 scroll=no 
marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">
  <tr bgcolor='#FFFFFF'> 
    <td bgcolor="#FFFFFF"> 
      [<a href="/friendlink/index.jsp">友情链接管理</a>] 
      [<a href="/friendlink/edit.jsp?method=addflink">添加友情链接</a>] 
     
    </td>
  </tr>
</table>
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
  <form name="form1" method="post" action="FriendLink.shtml"  >
    <tr class="head"> 
      <td colspan="2">  <input type="hidden" name="method" value=""> <input type="hidden" name="id" value="">    
      </td>
    </tr>
    <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">链接名称：</div>
      </td>
      <td bgcolor='#FFFFFF' > 
        <input class=mmcinb type='text' name='linkname' maxlength='20' value=''>&nbsp;<font color=red>*</font>
      </td>
    </tr>
    <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">链接网址：</div>
      </td>
      <td bgcolor='#FFFFFF' > 
        <input class=mmcinb type='text' name='linkurl' value='' size='50'  maxlength='150'>&nbsp;<font color=red>*</font>
      </td>
    </tr>
    <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">LOGO地址：</div>
      </td>
      <td bgcolor='#FFFFFF' > 
        <input class=mmcinb type='text'  name='linkpic' size="50" value=''  maxlength='200'>&nbsp;<font color=red>*</font>
      </td>
    </tr>
    <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">描述介绍：</div>
      </td>
      <td bgcolor='#FFFFFF' > 
        <input class=mmcinb type='text' name='intero' value='' size='60' maxlength='200'>&nbsp;<font color=red>*</font>
      </td>
    </tr>
    <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">是否在首页显示:</div>
      </td>
      <td bgcolor='#FFFFFF' > 
        <input type="radio" name="ifhide" value="1" >
        显示 
        <input type="radio" name="ifhide" value="0" >
        不显示 </td>
    </tr>
	<tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">排序值:</div>
      </td>
      <td bgcolor='#FFFFFF' > 
        <input type="text" name="ordervalue" value=""  maxlength="4" size="5"  onkeyup="this.value=this.value.replace(/\D/gi,'')"  >
       &nbsp;<font color=red>*</font>(数字)  </td>
    </tr>
    <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align='right'></div>
      </td>
      <td > 
        <input class=mmcinb type='button' name='button' value='提交数据' onclick='subFLINK()'>
      </td>
    </tr>
  </form>
</table>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>

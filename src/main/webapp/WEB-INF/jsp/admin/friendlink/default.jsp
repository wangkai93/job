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
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
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
     <tr class="head"> 
      <td width="5%" align="center">ID </td>
      <td  align="center">名称</td>
      <td  align="center">链接地址</td>
      <td  align="center">logo地址</td>
      <td  align="center">描述</td>
      <td  align="center">申请时间</td>
      <td  align="center">审核/删除</td>
    </tr>
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="" target="_blank"></a> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="" target="_blank"></a></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="" target="_blank"></a> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="FriendLink.shtml?method=shenhe&id=">审核</a>/<a href="Common.shtml?method=delsqlk&id="  onClick="return confirm('删除后不可恢复,你确实要删除吗?')">删除</a></td>
    </tr>
	
</table>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>

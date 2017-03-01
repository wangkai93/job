<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8" %>
<HTML>
<HEAD>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css" type=text/css rel=stylesheet>
<title>个人会员信息</title>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</head> 
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE width="100%" border=1 height=20 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
<tr><td>&nbsp;</td></tr>
</TABLE>
<TABLE width="100%" border=1 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
   <tr>
   <td align=right width="35%">真实姓名</td><td align=left>${stu.realname }</td>
   </tr>
   <tr>
   <td align=right>性别：</td><td align=left>${stu.sex =='f' ? '女':'男'}</td>
   </tr>
   <tr>
   <td align=right>出生日期：</td><td align=left>${stu.bir }</td>
   </tr>
   <tr>
   <td align=right>籍贯：</td><td align=left>${stu.sheng }省${stu.city }</td>
   </tr>
   <tr>
   <td align=right>联系电话：</td><td align=left>${stu.telphone }</td>
   </tr>
   <tr>
   <td align=right>邮箱：</td><td align=left>${stu.email }</td>
   </tr>
   <tr>
   <td align=right>密码保护提示问题：</td><td align=left>${stu.question }</td>
   </tr>
   <tr>
   <td align=right>密码保护答案：</td><td align=left>${stu.answer }</td>
   </tr>
   <tr>
   <td align=center colspan=2><input type=button value="关闭窗口" onclick="window.close()"></td>
   </tr>
   </table>
  </body>
</html>

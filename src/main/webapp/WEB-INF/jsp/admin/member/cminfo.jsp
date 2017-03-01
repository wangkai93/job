<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"  %>
<HTML>
<HEAD>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css" type=text/css rel=stylesheet>
<title>企业会员信息</title>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</head> 
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE width="100%" border=1 align="center" cellPadding=3 cellSpacing=1  class="tablewidth">
   <tr>
   <td align=right bgColor=#ffffff id=map>公司名称：</td><td align=left bgColor=#ffffff id=map> ${com.coname }</td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>地址：</td><td align=left bgColor=#ffffff id=map> ${com.address }</td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>邮政编码：</td><td align=left bgColor=#ffffff id=map> ${com.postnum } </td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>联系电话：</td><td align=left bgColor=#ffffff id=map> ${com.tel }</td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>邮箱：</td><td align=left bgColor=#ffffff id=map>${com.email }  </td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>密码保护提示问题：</td><td align=left bgColor=#ffffff id=map>${com.question } </td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>密码保护答案：</td><td align=left bgColor=#ffffff id=map>${com.answer } </td>
   </tr>
   <tr>
   <td align=right bgColor=#ffffff id=map>公司介绍：</td><td align=left bgColor=#ffffff id=map><textarea rows="6" cols="40" readonly> ${com.intro }</textarea></td>
   </tr>
   <tr>
   <td align=center colspan=2 bgColor=#ffffff id=map><input type=button value="关闭窗口" onclick="window.close()"></td>
   </tr>
   </table>
  </body>
</html>

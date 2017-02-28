<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="front_frame/header.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<LINK href="${pageContext.request.contextPath }/css/default.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css>
.ycbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(../img/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsnr {
	DISPLAY: block
}
.ycnr {
	DISPLAY: none
}
</STYLE>
<SCRIPT type=text/javascript>
function tb_xs(t,m,n){
for(var i=1;i<=m;i++){
if (i != n){
document.getElementById("tb"+t+ "_bt" + i).className= "ycbt";
document.getElementById("tb"+t+ "_nr" + i).className= "ycnr";}
else{
document.getElementById("tb"+t+ "_bt" + i).className= "xsbt";
document.getElementById("tb"+t+ "_nr" + i).className= "xsnr";}}}
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//屏蔽出错代码
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//处理大分类一行两个小分类
function autoTable(div){
	fs=document.getElementById(div).getElementsByTagName("TABLE");
	for(var i=0;i<fs.length;i++){
		fs[i].style.width='49.5%';
		if(i%2==1){
			if (document.all) {
				fs[i].style.styleFloat="right";
			}else{
				fs[i].style.cssFloat="right;";
			}
		}else{
			if (document.all) {
				fs[i].style.styleFloat="left";
			}else{
				fs[i].style.cssFloat="left;";
			}
		}
	}
}
//-->
</SCRIPT>
<SCRIPT language=JavaScript src="images/inc.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/default.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/swfobject.js"></SCRIPT>
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
<script type="text/javascript">
function send()
{
	if(document.form1.ee.value=="")
	{
		alert("只有注册会员并且在登录后才可以给求职人员发邮件！");
		return false;
	}
	document.write('<a href=mailto:'+document.form1.mail.value+'>点此给对方发邮件</a>');
}
</script>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0> 
<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
document.write('<div class="wrap">');
//-->
</SCRIPT>
     <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head colspan="2">
			<SPAN class=TAG>求职信息</SPAN> 
			
		  </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
               <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    
        <TR>
          <TD width=35% align=right>
		  求职职位：
		  </td>
		  <td>${resume.job }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		 希望待遇：</td>
		  <td>${resume.pay }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  本人学历：</td>
		  <td>${resume.school }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  性别：
		   </TD>
		   <td>${resume.sex }
		   </td>
		</TR>
		<TR>
          <TD  align=right>
		 年龄：</td>
		  <td>${resume.age }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  籍贯：</td>
		  <td>${resume.sheng }&nbsp;&nbsp;${resume.city }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  联系人：</td>
		  <td>${resume.linkman }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  联系电话：</td>
		  <td>${resume.tel }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  有效期：</td>
		  <td>${resume.yxq }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  个人简历：</td>
		  <td>${resume.intro }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  发布时间：</td>
		  <td>${resume.addtime }
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
          <form name="form1">
		  email：</td>
		  <td>${resume.email }&nbsp;&nbsp;<input type=button value="发邮件" onclick="send()" >
		  <input type=hidden name=ee value=""><input type=hidden name=mail value="">
		  </form>
		   </TD>
		</TR>
		<TR>
          <TD  align=right>
		  点击率：</td>
		  <td>${resume.visit }
		   </TD>
		</TR>
		
				</TBODY>
			</TABLE>			
			</TD>
		</TR>
        </TBODY>
	  </TABLE>


<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
document.write('</div>');
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--
clickEdit.init();
//-->
</SCRIPT>
</BODY>
</HTML>

<%@ include file="front_frame/footer.jsp"%>
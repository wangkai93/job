<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" %>
<%@ include file="front_frame/header.jsp" %>
<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center 
border=0>
<TR>
<TD>
<TABLE class=dragTable id=viewarticle cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TBODY>
  <TR>
    <TD class=head>
            <H3 class=L></H3><FONT 
                        color=#000000>您现在的位置：<SPAN 
                        style="TEXT-DECORATION: none"><A href=""></A></SPAN>&gt;&gt; 
<A href="login.jsp">会员登录</A>&gt;&gt; 找回密码</FONT>
	</TD>
	</TR>
  </TBODY>
</TABLE>

<script type="text/javascript">
function lostpwd()
{
	if(document.form1.username.value=="")
	{
		alert("请输入用户名！");
		document.form1.username.focus();
		return false;
	}
	if(document.form1.question.value=="")
	{
		alert("请输入密码提示问题！");
		document.form1.question.focus();
		return false;
	}
	if(document.form1.answer.value=="")
	{
		alert("请输入提示问题答案！");
		document.form1.answer.focus();
		return false;
	}
		document.form1.method.value="lostpwd";
		form1.submit();
}
</script>
      <DIV align=center>
      <TABLE class=dragTable  cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
        <TBODY>
        <TR>
          <TD width=100% align=left  bgColor=#c8c8c8 height=28>　
		  <SPAN class=black><strong><FONT color=blue>请仔细填写以下资料：</FONT></strong></SPAN></TD></TR>
        <TR>
          <TD>
            <TABLE   height=170 cellSpacing=0  cellPadding=0 width="100%"  border=0 hspace="12">
            <TBODY>
              <FORM name="form1" action="Member.shtml" method="post">
              <INPUT type=hidden  name="method"> 
              <TR >
                <TD align=right width="38%"  height=30>用 户 名:</TD>
                <TD width="62%"  height=30 align=left>
				<INPUT class=inputb  size=22 name=username >
				</TD>
				</TR>
              <TR class=black >
                <TD align=right width="38%"  height=30>提示问题:</TD>
                <TD width="62%"  height=30 align=left>
				<INPUT class=inputb   size=22 name=question >
				</TD>
				</TR>
              <TR class=black >
                <TD align=right width="38%"  height=30>问题答案:</TD>
                <TD width="62%"  height=30 align=left>
				<INPUT class=inputb  size=22 name=answer > 
				</TD>
				</TR>
              <TR class=black >
                <TD align=middle  colSpan=2 height=20>
				<INPUT type=radio CHECKED value=person name=reg_type> 个人会员 <INPUT type=radio value=co name=reg_type> 企业会员
				</TD>
				</TR>
              <TR class=black >
                <TD align=middle  colSpan=2 height=40>
				<img src=images/sub.gif onclick="lostpwd()" border=0> 　　 <img src=images/back.gif onclick="window.location=''" border=0> 
                
                </TD>
				</TR>
			</FORM>
			</TBODY>
			</TABLE>

			</DIV>
			</TD>
			</TR>
			</TBODY>
			</TABLE>　
			</DIV>
<%@ include file="front_frame/footer.jsp"%>
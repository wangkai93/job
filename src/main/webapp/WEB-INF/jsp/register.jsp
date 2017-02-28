<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="front_frame/header.jsp" %>
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
              <FORM name="regbb" action="${pageContext.request.contextPath }/register/check" method="post">
              <INPUT type=hidden  name="method"> 
              <TR >
                <TD align=right width="38%"  height=30>用 户 名:</TD>
                <TD width="62%"  height=30 align=left><font id="sameName" color=red>${sameName }</font>
				<INPUT class=inputb id=username maxLength=10 size=22 name=username onblur="checkUsername()" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')" >&nbsp;不小于4位
				</TD>
				</TR>
              <TR class=black >
                <TD align=right width="38%"  height=30>登陆密码:</TD>
                <TD width="62%"  height=30 align=left>
				<INPUT class=inputb id=password type=password maxLength=16 size=22 name=password onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')" > 6位以上
				</TD>
				</TR>
              <TR class=black >
                <TD align=right width="38%"  height=30>密码确认:</TD>
                <TD width="62%"  height=30 align=left>
				<INPUT class=inputb id=reg_pwd2 type=password maxLength=16 size=22 name=reg_pwd2 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" 
                              onkeyup="value=value.replace(/[\W]/g,'')" > 
				</TD>
				</TR>
              <TR class=black >
                <TD align=middle  colSpan=2 height=20>
				<INPUT type=radio CHECKED value=person name=reg_type> 个人会员 <INPUT type=radio value=co name=reg_type> 企业会员
				</TD>
				</TR>
              <TR class=black >
                <TD align=middle  colSpan=2 height=40>
				<img src="${pageContext.request.contextPath }/img/sub.gif" onclick="checkREG()" border=0> 　　 <img src="${pageContext.request.contextPath }/img/back.gif" onclick="window.location=''" border=0> 
                
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
<%@ include file="front_frame/footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="front_frame/header.jsp"%>
<LINK href="${pageContext.request.contextPath }/css/public.css" type=text/css rel=stylesheet><LINK 
href="${pageContext.request.contextPath }/css/login.css" type=text/css rel=stylesheet>
<script type="text/javascript">
/**
 * 改变验证码
 */
function changeCheckNum() {
	var checkNumImage_ = document.getElementById("checkNumImage");
	checkNumImage_.src = "${pageContext.request.contextPath}/image.jsp?timeStamp="
			+ new Date().getTime();
}</script>
<form name="loginform" action="${pageContext.request.contextPath }/login/login" method="post">
<DIV id=div1>
  <TABLE id=login height="100%" cellSpacing=0 cellPadding=0 width=800 
align=center>
    <TBODY>
      <TR id=main>
        <TD>
          <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
            <TBODY>
              <TR>
                <TD colSpan=4>&nbsp;</TD>
              </TR>
              <TR height=30>
                <TD width=380>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
              </TR>
              <TR height=40>
              	<font color="#ff0000">${loginError }</font>
                <TD rowSpan=4>&nbsp;</TD>
                <TD>用户名：</TD>
                <TD>
                  <INPUT class=textbox id=username name=username>
                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD>密　码：</TD>
                <TD>
                  <INPUT class=textbox id=password type=password 
            name=password>
                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=40>
                <TD>验证码：</TD>
                <TD vAlign=center colSpan=2>
                  <INPUT id=checkCode size=4 name=checkCode>
                  &nbsp; <IMG id="checkNumImage" src="../image.jsp" border=0 height="19" align="absmiddle" onClick="changeCheckNum()" 
			  	           title="点击换一张" style="cursor:hand"><font color="#ff0000">${checkCodeError }</font></TD>
              </TR>
              <TR height=40>
                <TD></TD>
                <TD align=left>
                  <INPUT type=radio CHECKED value=person name=reg_type> 个人会员 <INPUT type=radio value=co name=reg_type> 企业会员&nbsp;&nbsp;&nbsp;&nbsp;
                  <INPUT id=btnLogin type=submit onclick="checkLoginInfo();" value=" 登 录 " name=btnLogin>
                </TD>
                <TD width=120>&nbsp;</TD>
              </TR>
              <TR height=110>
                <TD colSpan=4>&nbsp;</TD>
              </TR>
            </TBODY>
          </TABLE>
        </TD>
      </TR>
      <TR id=root height=104>
        <TD>&nbsp;</TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>
</form>
<%@ include file="front_frame/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<HTML><HEAD>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css" type=text/css rel=stylesheet>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
<script  type="text/javascript" >
function del()
{
	pageform.submit();
}

function allch()
{
	for(i=0;i<${fn:length(resumeList)};i++)
	{
		document.pageform.checkit[i].checked=document.pageform.checkall.checked;
	}
}
</script>
</HEAD>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=yes marginheight="0" marginwidth="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="center" vAlign=top >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
<TBODY>
     <tr class="head"> 
      <td width="5%" align="center">序号</td>
      <td  align="center">求职职位</td>
      <td  align="center">工资待遇</td>
      <td  align="center">学历</td>
      <td  align="center">联系人</td>
      <td  align="center">年龄</td>
      <td  align="center">有效期限</td>
      <td  align="center">发布时间</td>
      <td  align="center">状态</td>
      <td  align="center">点击率</td>
      <td  align="center">修改</td>
      <td  align="center">选择</td>
    </tr>
		 <form action="${pageContext.request.contextPath }/resume/delete" method="post" name="pageform">
		 	<c:if test="${ ! empty resumeList }">
		 		<c:forEach items="${resumeList }" var="resume">
					<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
				      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;">${resume.id }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">   
				      <a title="信息预览" href="${pageContext.request.contextPath }/resume/show/${resume.id}" target="_blank">${resume.job }</a></td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.pay }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.school }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.linkman }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.age }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.yxq }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.addtime }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.ifhide }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">${resume.visit }</td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;">
				      <a href="${pageContext.request.contextPath }/resume/update/${resume.id}" >修改</a> </td>
				      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><input type="checkbox" name="checkit" value="${resume.id}"></td>
				    </tr>
				</c:forEach>
			</c:if>
<TR align="right" >
			 <TD colspan="12" id=map>
			 <input type="checkbox" name="checkall" onClick="allch()" >&nbsp;全选&nbsp;&nbsp;&nbsp;&nbsp;
			 </TD>
			 </TR>
	</form>
	 </TBODY>
	 </TABLE>
	</td>
	</tr>
<TR>
    	   <TD align="center" vAlign=top >
             <TABLE  align="center" vAlign=top width="100%" border=0 align="center" cellPadding=3 cellSpacing=1>
		     <TBODY>
		     <TR align="center" class=head>
			 <TD >
			 <input title="删除后不可恢复，而且会造成相关的信息无法显示，请慎重操作！" type="button" name="button" value="删除" onClick="del()" >
			 </TD>
			 </TR>
			 </TBODY>
			 </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>

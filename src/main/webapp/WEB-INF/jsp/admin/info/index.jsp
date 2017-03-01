<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<HTML>
<HEAD>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css"
	type=text/css rel=stylesheet>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px;
	BACKGROUND-COLOR: #ffffff
}

.STYLE1 {
	color: #ECE9D8
}
</STYLE>
<script language="javascript">
function del()
{
	pageform.submit();
}

function allch()
{
	for(i=0;i<${fn:length(jobList)};i++)
	{
		document.pageform.checkit[i].checked=document.pageform.checkall.checked;
	}
}
</script>
</HEAD>
<BODY oncontextmenu="return false;" onselectstart="return false;"
	leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=yes
	marginheight="0" marginwidth="0">
	<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
			<TR>
				<TD align="center" vAlign=top>
					<table width='100%' cellspacing='1' cellpadding='3'
						bgcolor='#CCCCCC' class="tablewidth">
						<TBODY>
							<tr class="head">
								<td width="5%" align="center">序号</td>
								<td align="center">招聘职位</td>
								<td align="center">招聘人数</td>
								<td align="center">招聘单位</td>
								<td align="center">联系人</td>
								<td align="center">工资待遇</td>
								<td align="center">有效期限</td>
								<td align="center">发布时间</td>
								<td align="center">状态</td>
								<td align="center">点击率</td>
								<td align="center">修改</td>
								<td align="center">选择</td>
							</tr>
							<form action="${pageContext.request.contextPath }/job/delete" method="post"
								name="pageform">
								<c:if test="${! empty jobList }">
									<c:forEach items="${jobList }" var="job">
										<tr class="trA" onMouseOver="this.className='trB'"
											onMouseOut="this.className='trA'">
											<td width='5%' align="center"
												style="border-bottom: 1px dotted #ccc;">${job.id }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;"><a title="信息预览"
												href="javascript()" onclick="window.open('${pageContext.request.contextPath }/job/show/${job.id}','newwin','dialogHeight:400px;   dialogWidth:   600px;   dialogTop:0px;   dialogLeft:   5px;   edge:   Raised;   center:   Yes;   help:   Yes;   resizable:   Yes;   status:yes;');" target="_blank">${job.need }</a></td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.num }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.danwei }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.linkman }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.pay }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.yxq }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.addtime }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.ifhide }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;">${job.visit }</td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;"><a
												href="${pageContext.request.contextPath }/job/update/${job.id }">修改</a></td>
											<td align="center" bgcolor="#FFFFFF"
												style="border-bottom: 1px dotted #ccc;"><input
												type="checkbox" name="checkit" value=""></td>
										</tr>
									</c:forEach>
							</c:if>

								<TR align="right">
									<TD colspan="12" id=map><input type="checkbox"
										name="checkall" onClick="allch()">&nbsp;全选&nbsp;&nbsp;&nbsp;&nbsp;
									</TD>
								</TR>
							</form>
						</TBODY>
					</TABLE>
				</td>
			</tr>
			<TR>
				<TD align="center" vAlign=top>
					<TABLE align="center" vAlign=top width="100%" border=0
						align="center" cellPadding=3 cellSpacing=1>
						<TBODY>
							<TR align="center" class=head>
								<TD><input title="删除后不可恢复，而且会造成相关的信息无法显示，请慎重操作！"
									type="button" name="button" value="删除" onClick="del()">
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

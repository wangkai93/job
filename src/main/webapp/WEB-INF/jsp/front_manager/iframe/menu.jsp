<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="../css/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el) {
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none') {
			childObj.style.display = 'block';
		} else {
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<BODY>
	<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170
		background=../img/menu_bg.jpg border=0>
		<TR>
			<TD vAlign=top align=middle>
				<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>

					<TR>
						<TD height=10></TD>
					</TR>
				</TABLE>
				
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(0) href="javascript:void(0);">资料管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<c:if test="${userKey.type == 'co' }">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="../img/menu_icon.gif" width=9></TD>
							<TD><A class=menuChild href="${pageContext.request.contextPath }/user/update/${userKey.type}/${userKey.id}" target=main>企业信息管理</A></TD>
						</TR>
					</c:if>
					<c:if test="${userKey.type == 'person' }">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="../img/menu_icon.gif" width=9></TD>
							<TD><A class=menuChild href="${pageContext.request.contextPath }/user/update/${userKey.type}/${userKey.id}" target=main>个人信息管理</A></TD>
						</TR>
					</c:if>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<c:if test="${userKey.type == 'co' }">
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(1) href="javascript:void(0);">招聘信息管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>

					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/job/manage" target=main>招聘信息管理</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild
							href="${pageContext.request.contextPath }/job/add" target=main>发布招聘信息</A></TD>
					</TR>
				</TABLE>
				</c:if>
				<c:if test="${userKey.type == 'person' }">
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(2) href="javascript:void(0);">求职信息管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>

					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/resume/manage" target=main>求职信息管理</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild
							href="${pageContext.request.contextPath }/resume/add" target=main>发布求职信息</A></TD>
					</TR>
				</TABLE>
				</c:if>
			</TD>
			<TD width=1 bgColor=#d1e6f7></TD>
		</TR>
	</TABLE>
</BODY>
</HTML>
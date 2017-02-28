<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
							class=menuParent onclick=expand(1) href="javascript:void(0);">系统设置</A></TD>
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
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/setting" target=main>管理员设置</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/adminlog" target=main>后台登录日志</A></TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(2) href="javascript:void(0);">网站设置</A></TD>
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
						<TD><A class=menuChild href="#" target=main>友情链接管理</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/guestbookManage" target=main>留言板管理</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="#" target=main>滚动公告管理</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="#" target=main>发布滚动公告</A></TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(3) href="javascript:void(0);">新闻资讯</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/newsManage" target=main>新闻资讯管理</A></TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/addnews" target=main>发布新闻资讯</A></TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(4) href="javascript:void(0);">企业会员管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/companyManage" target=main>企业会员管理</A></TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(5) href="javascript:void(0);">个人会员管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>

					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/studentManage" target=main>个人会员管理</A></TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(6) href="javascript:void(0);">招聘信息管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>

					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/jobManage" target=main>招聘信息管理</A></TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=../img/menu_bt.jpg><A
							class=menuParent onclick=expand(7) href="javascript:void(0);">求职信息管理</A></TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child7 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>

					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="../img/menu_icon.gif" width=9></TD>
						<TD><A class=menuChild href="${pageContext.request.contextPath }/admin/resumeManage" target=main>求职信息管理</A></TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
			</TD>
			<TD width=1 bgColor=#d1e6f7></TD>
		</TR>
	</TABLE>
</BODY>
</HTML>
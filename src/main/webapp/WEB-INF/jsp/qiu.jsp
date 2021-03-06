<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="front_frame/header.jsp"%>
<LINK href="${pageContext.request.contextPath }/css/default.css"
	type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/css.css"
	type=text/css rel=stylesheet>
<STYLE type=text/css>
.ycbt {
	BORDER-RIGHT: #fff 1px solid;
	BORDER-TOP: #fff 1px solid;
	PADDING-LEFT: 1.8em;
	BACKGROUND-COLOR: #EAF2EF;
	BORDER-LEFT: #fff 1px solid;
	PADDING-TOP: 7px;
	BORDER-BOTTOM: #fff 1px solid;
	HEIGHT: 20px
}

.xsbt {
	BORDER-RIGHT: #fff 1px solid;
	BORDER-TOP: #fff 1px solid;
	PADDING-LEFT: 1.8em;
	BACKGROUND-IMAGE: url(../img/head1.gif);
	BORDER-LEFT: #fff 1px solid;
	PADDING-TOP: 7px;
	BORDER-BOTTOM: #fff 1px solid;
	HEIGHT: 20px
}

.xsnr {
	DISPLAY: block
}

.ycnr {
	DISPLAY: none
}
</STYLE>
<SCRIPT type=text/javascript>
	function tb_xs(t, m, n) {
		for (var i = 1; i <= m; i++) {
			if (i != n) {
				document.getElementById("tb" + t + "_bt" + i).className = "ycbt";
				document.getElementById("tb" + t + "_nr" + i).className = "ycnr";
			} else {
				document.getElementById("tb" + t + "_bt" + i).className = "xsbt";
				document.getElementById("tb" + t + "_nr" + i).className = "xsnr";
			}
		}
	}
</SCRIPT>
	<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%"
		border=0>
		<TBODY>
			<TR>
				<TD class=head colspan="2"><SPAN class=TAG>求职信息</SPAN></TD>
			</TR>
			<TR>
				<TD class=middle align="left">
					<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0
						width="100%" border=0>
						<TBODY>
							<c:if test="${! empty resumesList }">
								<c:forEach items="${resumesList }" var="resume">
									<TR>
										<TD align=left><A href="${pageContext.request.contextPath }/resume/show/${resume.id}">${resume.job }</A></TD>
										<TD align=center>${resume.pay }元/月</TD>
										<TD align=center>${resume.school }</TD>
										<TD align=center>${resume.linkman }</TD>
										<TD align=center>${resume.tel }</TD>
										<TD align=right>${resume.addtime }</TD>
									</TR>
								</c:forEach>
							</c:if>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
<%@ include file="front_frame/footer.jsp"%>
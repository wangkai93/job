<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="front_frame/header.jsp"%>
<TABLE cellSpacing=0 cellPadding=0 width=100% bgColor=#f5f5f5 border=0>
	<FORM id=reg name=reg action="${pageContext.request.contextPath }/register/company" method=post>
	<TBODY>
		<TR>
			<TD class=white width=700 bgColor=#c8c8c8 height=23><SPAN
				class=black><FONT color=blue><strong>企业注册信息:
					</strong></FONT> <FONT color="#FF0000">**</FONT>为必填写字段&nbsp;&nbsp;</SPAN></TD>
		</TR>
		<TR>
			<TD vAlign=top align=middle bgColor=#ffffff height=209>
				<DIV align=center>
					<TABLE height=237 cellSpacing=0 cellPadding=0 width="100%" border=0
						hspace="12">
						<TBODY>
							<TR>
								<TD vAlign=center align=right height=12>用 户 名：</TD>
								<TD width=556 height=24 align=left><INPUT class=inputb
									maxLength=24 size=30 name="username"
									value="${user.username }" readonly>
								</TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=24>登陆密码：</TD>
								<TD width=556 height=24 align=left><INPUT class=inputb
									maxLength=24 size=30 name="password" type="password"
									value="${user.password }" readonly>
								</TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=26>&nbsp;&nbsp;公司名称：</TD>
								<TD width=556 height=26 align=left><INPUT class=inputb
									maxLength=50 size=30 name=coname> <FONT color=#ff0000>**</FONT></TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=26>&nbsp;&nbsp;公司地址：</TD>
								<TD width=556 height=26 align=left><INPUT class=inputb
									maxLength=100 size=30 name=address> <FONT color=#ff0000>**</FONT></TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=26>&nbsp;&nbsp;邮政编码：</TD>
								<TD width=556 height=26 align=left><INPUT class=inputb
									maxLength=6 size=30 name=postnum
									onKeyUp="this.value=this.value.replace(/\D/gi,'')"></TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=12>联系电话：</TD>
								<TD height=12 align=left><INPUT class=inputb name=tel
									maxLength=18 size=30
									onkeyup="this.value=this.value.replace(/\D/gi,'')"> <FONT
									color=#ff0000>**</FONT></TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=12>E-mail：</TD>
								<TD height=12 align=left><INPUT class=inputb name=email
									maxLength=50 size=30> <FONT color=#ff0000>**</FONT> <FONT
									color=#ff6600>(此电子邮件非常重要，请认真填写！）</FONT></TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=12>&nbsp;&nbsp;密码提示问题：</TD>
								<TD width=556 height=12 align=left><INPUT class=inputb
									maxLength=28 size=30 name=question> <FONT color=#ff0000>**</FONT>
									需要找回密码的时候,提示的问题“您叫什么名字？”</TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=17>&nbsp;&nbsp;问题回答：</TD>
								<TD width=556 height=17 align=left><INPUT class=inputb
									maxLength=28 size=30 name=answer> <FONT color=#ff0000>**</FONT>
									您自设问题的答案,如您的答案是“小黄”</TD>
							</TR>
							<TR>
								<TD vAlign=center align=right height=17>&nbsp;&nbsp;公司简介：</TD>
								<TD width=556 height=17 align=left><TEXTAREA id=intro
										name=intro rows=6 cols=45></TEXTAREA> <INPUT id=reg_type
									type=hidden value=0 name=reg_type></TD>
							</TR>
							<TR>
								<TD vAlign=center align=right width=697 colSpan=2 height=17>
									<P align=center>
										<img src="${pageContext.request.contextPath }/img/sub.gif" onclick="checkcoreg()" border=0>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</DIV>
			</TD>
		</TR>
		</FORM>
	</TBODY>
</TABLE>
<%@ include file="front_frame/footer.jsp"%>
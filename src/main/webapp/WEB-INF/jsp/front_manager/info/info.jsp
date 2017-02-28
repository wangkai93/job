<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<HTML><HEAD>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath }/js/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath }/js/calendar.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath }/js/city.js"></SCRIPT>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=yes marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
	<form action="${pageContext.request.contextPath }/user/updatestu" method="post" name="regform" onSubmit="return checkpersonreg()">
	<INPUT type="hidden" name=id value="${stu.id }">
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD colspan="2" height=23>修改会员资料  <FONT color="#FF0000">**</FONT>为必填写字段</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >真实姓名：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=24 size=30 name=realname value="${stu.realname }"> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >性&nbsp;&nbsp;&nbsp;&nbsp;别：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT type="radio" name="sex" value="m" ${stu.sex == 'm'?'checked':''}> 男 <input type="radio" name="sex" value="f" ${stu.sex == 'f'?'checked':''}>女
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >出生日期：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=24 size=30 name=bir value="${stu.bir}"  readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd')";>  
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >籍&nbsp;&nbsp;&nbsp;&nbsp;贯：</TD>
			<TD width="70%" align="left" id=map>
			<select style="WIDTH: 80px"  name="sheng" id="sheng" onchange="ProvinceChange(this, regform.city);">
							          <option value=""></option>
							          <option value="北京" ${stu.sheng =='北京'?'selected':'' }>北京</option>
							          <option value="天津" ${stu.sheng =='天津'?'selected':'' }>天津</option>
							          <option value="辽宁" ${stu.sheng =='辽宁'?'selected':'' }>辽宁</option>
							          <option value="吉林" ${stu.sheng =='吉林'?'selected':'' }>吉林</option>
							          <option value="黑龙江" ${stu.sheng =='黑龙江'?'selected':'' }>黑龙江</option>
							          <option value="河北" ${stu.sheng =='河北'?'selected':'' }>河北</option>
							          <option value="山西" ${stu.sheng =='山西'?'selected':'' }>山西</option>
							          <option value="内蒙古" ${stu.sheng =='内蒙古'?'selected':'' }>内蒙古</option>
							          <option value="上海" ${stu.sheng =='上海'?'selected':'' }>上海</option>
							          <option value="江苏" ${stu.sheng =='江苏'?'selected':'' }>江苏</option>
							          <option value="浙江" ${stu.sheng =='浙江'?'selected':'' }>浙江</option>
							          <option value="安徽" ${stu.sheng =='安徽'?'selected':'' }>安徽</option>
							          <option value="福建" ${stu.sheng =='福建'?'selected':'' }>福建</option>
							          <option value="江西" ${stu.sheng =='江西'?'selected':'' }>江西</option>
							          <option value="山东" ${stu.sheng =='山东'?'selected':'' }>山东</option>
							          <option value="河南" ${stu.sheng =='河南'?'selected':'' }>河南</option>
							          <option value="湖北" ${stu.sheng =='湖北'?'selected':'' }>湖北</option>
							          <option value="湖南" ${stu.sheng =='湖南'?'selected':'' }>湖南</option>
							          <option value="广东" ${stu.sheng =='广东'?'selected':'' }>广东</option>
							          <option value="广西" ${stu.sheng =='广西'?'selected':'' }>广西</option>
							          <option value="海南" ${stu.sheng =='海南'?'selected':'' }>海南</option>
							          <option value="重庆" ${stu.sheng =='重庆'?'selected':'' }>重庆</option>
							          <option value="四川" ${stu.sheng =='四川'?'selected':'' }>四川</option>
							          <option value="贵州" ${stu.sheng =='贵州'?'selected':'' }>贵州</option>
							          <option value="云南" ${stu.sheng =='云南'?'selected':'' }>云南</option>
							          <option value="西藏" ${stu.sheng =='西藏'?'selected':'' }>西藏</option>
							          <option value="陕西" ${stu.sheng =='陕西'?'selected':'' }>陕西</option>
							          <option value="甘肃" ${stu.sheng =='甘肃'?'selected':'' }>甘肃</option>
							          <option value="青海" ${stu.sheng =='青海'?'selected':'' }>青海</option>
							          <option value="宁夏" ${stu.sheng =='宁夏'?'selected':'' }>宁夏</option>
							          <option value="新疆" ${stu.sheng =='新疆'?'selected':'' }>新疆</option>
							          <option value="台湾" ${stu.sheng =='台湾'?'selected':'' }>台湾</option>
							          <option value="香港" ${stu.sheng =='香港'?'selected':'' }>香港</option>
							          <option value="澳门" ${stu.sheng =='澳门'?'selected':'' }>澳门</option>
							        </select>
							        <select style="WIDTH: 80px" name="city" id="city" >
							        <option selected="selected" value="${stu.city }"></option>
							        </select> <FONT color=#ff0000>**</FONT>
							        </TD>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联系电话：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb name=telphone maxLength=18 size=30  onkeyup="this.value=this.value.replace(/\D/gi,'')" value="${stu.telphone }"> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >E-mail：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb  name=email maxLength=50 size=30  value="${stu.email }"> <FONT color=#ff0000>**</FONT> <FONT color=#ff6600>(此电子邮件非常重要，请认真填写！）</FONT>
			</TD>
		  </TR>
		   <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >密码提示问题：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=28 size=30 name=question  value="${stu.question }"> <FONT color=#ff0000>**</FONT> 需要找回密码的时候,提示的问题“您叫什么名字？”
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >问题回答：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=28 size=30  name=answer value="${stu.answer }"> <FONT color=#ff0000>**</FONT> 您自设问题的答案,如您的答案是“小黄”
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD colspan="2" align="center" ><input type="submit" value="提交">&nbsp;&nbsp;<input type="reset" value="重填"></TD>
		  </TR>
		</TBODY>
	   </TABLE>
	  </form>
    </TD>
  </TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>

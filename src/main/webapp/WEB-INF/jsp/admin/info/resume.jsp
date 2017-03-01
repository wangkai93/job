<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<HTML><HEAD>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath }/js/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath }/js/city.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=yes marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="center" vAlign=top >
	<form action="${pageContext.request.contextPath }/resume/add" method="post" name="form1" onSubmit="return checkaddjob2()">
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD colspan="2" height=23>发布求职信息 <FONT color="#FF0000">**</FONT>为必填写字段</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >求职职位：</TD>
			<TD width="70%" align="left" id=map><input type="hidden" name="action" value=""><input type="hidden" name="id" value="">
			<INPUT class=inputb maxLength=30 size=30 name=job value=""> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >工资待遇：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=pay value=""> <FONT color=#ff0000>**</FONT>  
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >学&nbsp;&nbsp;&nbsp;&nbsp;历：</TD>
			<TD width="70%" align="left" id=map>
			<select name=school >
			<option value=""></option>
			<option value="高中">高中</option>
			<option value="大专">大专</option>
			<option value="本科">本科</option>
			<option value="本科以上">本科以上</option>
			</select> <FONT color=#ff0000>**</FONT>  
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >性&nbsp;&nbsp;&nbsp;&nbsp;别：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT type=radio name=sex value="男" > 男 <INPUT type=radio name=sex value="女" > 女 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >年&nbsp;&nbsp;&nbsp;&nbsp;龄：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=2 size=5 name=age value=""  onkeyup="this.value=this.value.replace(/\D/gi,'')"> <FONT color=#ff0000>**</FONT></TD>
		  </TR>
		   <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >籍&nbsp;&nbsp;&nbsp;&nbsp;贯：</TD>
			<TD width="70%" align="left" id=map>
			<select style="WIDTH: 80px"  name="sheng" id="sheng" onchange="ProvinceChange(this, form1.city);">
							          <option selected="selected" value=""></option>
							          <option value="北京">北京</option>
							          <option value="天津">天津</option>
							          <option value="辽宁">辽宁</option>
							          <option value="吉林">吉林</option>
							          <option value="黑龙江">黑龙江</option>
							          <option value="河北">河北</option>
							          <option value="山西">山西</option>
							          <option value="内蒙古">内蒙古</option>
							          <option value="上海">上海</option>
							          <option value="江苏">江苏</option>
							          <option value="浙江">浙江</option>
							          <option value="安徽">安徽</option>
							          <option value="福建">福建</option>
							          <option value="江西">江西</option>
							          <option value="山东">山东</option>
							          <option value="河南">河南</option>
							          <option value="湖北">湖北</option>
							          <option value="湖南">湖南</option>
							          <option value="广东">广东</option>
							          <option value="广西">广西</option>
							          <option value="海南">海南</option>
							          <option value="重庆">重庆</option>
							          <option value="四川">四川</option>
							          <option value="贵州">贵州</option>
							          <option value="云南">云南</option>
							          <option value="西藏">西藏</option>
							          <option value="陕西">陕西</option>
							          <option value="甘肃">甘肃</option>
							          <option value="青海">青海</option>
							          <option value="宁夏">宁夏</option>
							          <option value="新疆">新疆</option>
							          <option value="台湾">台湾</option>
							          <option value="香港">香港</option>
							          <option value="澳门">澳门</option>
							        </select>
							        <select style="WIDTH: 80px" name="city" id="city" >
							        <option selected="selected" value=""></option>
							        </select>  <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联 系 人：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=linkman  value="" >  <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联系电话：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30  name=tel value="" > <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >email：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30  name=email value="" > <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >有效期限：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=5 size=5  name=yxq value="" onkeyup="this.value=this.value.replace(/\D/gi,'')"> 天 <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >详细资料：</TD>
			<TD width="70%" align="left" id=map>
			<textarea name=intro rows=8 cols=60 ></textarea>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD colspan="2" align="center" ><input type="submit" value="提交">&nbsp;&nbsp;
			<input type="button" value="返回" onClick="javascript: history.go(-1)"> <input type="reset" value="重填"></TD>
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

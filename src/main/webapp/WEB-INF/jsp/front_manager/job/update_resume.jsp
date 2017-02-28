<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<form action="${pageContext.request.contextPath }/resume/update" method="post" name="form1" onSubmit="return checkaddjob2()">
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD colspan="2" height=23>修改求职信息 <FONT color="#FF0000">**</FONT>为必填写字段</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >求职职位：</TD>
			<TD width="70%" align="left" id=map><input type="hidden" name="action" value=""><input type="hidden" name="id" value="${resume.id }">
			<INPUT class=inputb maxLength=30 size=30 name=job value="${resume.job }"> <FONT color=#ff0000>**</FONT>
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >工资待遇：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=pay value="${resume.pay }"> <FONT color=#ff0000>**</FONT>  
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >学&nbsp;&nbsp;&nbsp;&nbsp;历：</TD>
			<TD width="70%" align="left" id=map>
			<select name=school >
			<option value=""></option>
			<option value="高中" ${resume.school =='高中'?'selected':'' }>高中</option>
			<option value="大专" ${resume.school =='大专'?'selected':'' }>大专</option>
			<option value="本科" ${resume.school =='本科'?'selected':'' }>本科</option>
			<option value="本科以上" ${resume.school =='本科以上'?'selected':'' }>本科以上</option>
			</select> <FONT color=#ff0000>**</FONT>  
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >性&nbsp;&nbsp;&nbsp;&nbsp;别：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT type=radio name=sex value="男"  ${resume.sex=='男'?'checked':''}> 男 <INPUT type=radio name=sex value="女" ${resume.sex=='女'?'checked':''}> 女 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >年&nbsp;&nbsp;&nbsp;&nbsp;龄：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=2 size=5 name=age value="${resume.age }"  onkeyup="this.value=this.value.replace(/\D/gi,'')"> <FONT color=#ff0000>**</FONT></TD>
		  </TR>
		   <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >籍&nbsp;&nbsp;&nbsp;&nbsp;贯：</TD>
			<TD width="70%" align="left" id=map>
			<select style="WIDTH: 80px"  name="sheng" id="sheng" onchange="ProvinceChange(this, form1.city);">
							          <option  value=""></option>
							          <option value="北京" ${resume.sheng =='北京'?'selected':'' }>北京</option>
							          <option value="天津" ${resume.sheng =='天津'?'selected':'' }>天津</option>
							          <option value="辽宁" ${resume.sheng =='辽宁'?'selected':'' }>辽宁</option>
							          <option value="吉林" ${resume.sheng =='吉林'?'selected':'' }>吉林</option>
							          <option value="黑龙江" ${resume.sheng =='黑龙江'?'selected':'' }>黑龙江</option>
							          <option value="河北" ${resume.sheng =='河北'?'selected':'' }>河北</option>
							          <option value="山西" ${resume.sheng =='山西'?'selected':'' }>山西</option>
							          <option value="内蒙古" ${resume.sheng =='内蒙古'?'selected':'' }>内蒙古</option>
							          <option value="上海" ${resume.sheng =='上海'?'selected':'' }>上海</option>
							          <option value="江苏" ${resume.sheng =='江苏'?'selected':'' }>江苏</option>
							          <option value="浙江" ${resume.sheng =='浙江'?'selected':'' }>浙江</option>
							          <option value="安徽" ${resume.sheng =='安徽'?'selected':'' }>安徽</option>
							          <option value="福建" ${resume.sheng =='福建'?'selected':'' }>福建</option>
							          <option value="江西" ${resume.sheng =='江西'?'selected':'' }>江西</option>
							          <option value="山东" ${resume.sheng =='山东'?'selected':'' }>山东</option>
							          <option value="河南" ${resume.sheng =='河南'?'selected':'' }>河南</option>
							          <option value="湖北" ${resume.sheng =='湖北'?'selected':'' }>湖北</option>
							          <option value="湖南" ${resume.sheng =='湖南'?'selected':'' }>湖南</option>
							          <option value="广东" ${resume.sheng =='广东'?'selected':'' }>广东</option>
							          <option value="广西" ${resume.sheng =='广西'?'selected':'' }>广西</option>
							          <option value="海南" ${resume.sheng =='海南'?'selected':'' }>海南</option>
							          <option value="重庆" ${resume.sheng =='重庆'?'selected':'' }>重庆</option>
							          <option value="四川" ${resume.sheng =='四川'?'selected':'' }>四川</option>
							          <option value="贵州" ${resume.sheng =='贵州'?'selected':'' }>贵州</option>
							          <option value="云南" ${resume.sheng =='云南'?'selected':'' }>云南</option>
							          <option value="西藏" ${resume.sheng =='西藏'?'selected':'' }>西藏</option>
							          <option value="陕西" ${resume.sheng =='陕西'?'selected':'' }>陕西</option>
							          <option value="甘肃" ${resume.sheng =='甘肃'?'selected':'' }>甘肃</option>
							          <option value="青海" ${resume.sheng =='青海'?'selected':'' }>青海</option>
							          <option value="宁夏" ${resume.sheng =='宁夏'?'selected':'' }>宁夏</option>
							          <option value="新疆" ${resume.sheng =='新疆'?'selected':'' }>新疆</option>
							          <option value="台湾" ${resume.sheng =='台湾'?'selected':'' }>台湾</option>
							          <option value="香港" ${resume.sheng =='香港'?'selected':'' }>香港</option>
							          <option value="澳门" ${resume.sheng =='澳门'?'selected':'' }>澳门</option>
							        </select>
							        <select style="WIDTH: 80px" name="city" id="city" >
							        <option selected="selected" value="${resume.city }"></option>
							        </select>  <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联 系 人：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30 name=linkman  value="${resume.linkman }" >  <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >联系电话：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30  name=tel value="${resume.tel }" > <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >email：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=30 size=30  name=email value="${resume.email }" > <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >有效期限：</TD>
			<TD width="70%" align="left" id=map>
			<INPUT class=inputb maxLength=5 size=5  name=yxq value="${resume.yxq }" onkeyup="this.value=this.value.replace(/\D/gi,'')"> 天 <FONT color=#ff0000>**</FONT> 
			</TD>
		  </TR>
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >详细资料：</TD>
			<TD width="70%" align="left" id=map>
			<textarea name=intro rows=8 cols=60 >${resume.intro }</textarea>
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

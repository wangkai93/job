<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
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
<script  language="javascript" >
function top(){
   	form3.action="/member/person.jsp?page=1";
    form3.submit();
}
function last(){
    if(form3.pageCount.value==0){//如果总页数为0，那么最后一页为1，也就是第一页，而不是第0页
    form3.action="/member/person.jsp?page=1";
    form3.submit();
	}else{
	form3.action="/member/person.jsp?page="+form3.pageCount.value;
    	form3.submit();
	}
}
function pre(){
  var page=parseInt(form3.page.value);
  if(page<=1){
    alert("已至第一页");
  }else{
    form3.action="/member/person.jsp?page="+(page-1);
    form3.submit();
  }
}

function next(){
  var page=parseInt(form3.page.value);
  var pageCount=parseInt(form3.pageCount.value);
  if(page>=pageCount){
    alert("已至最后一页");
  }else{
    form3.action="/member/person.jsp?page="+(page+1);
    form3.submit();
  }
}
function bjump(){
  	var pageCount=parseInt(form3.pageCount.value);
  	if( fIsNumber(form3.busjump.value,"1234567890")!=1 ){
		alert("跳转文本框中只能输入数字!");
		form3.busjump.select();
		form3.busjump.focus();
		return false;
	}
	if(form3.busjump.value>pageCount){//如果跳转文本框中输入的页数超过最后一页的数，则跳到最后一页
	  if(pageCount==0){	
	  form3.action="/member/person.jsp?page=1";
	  form3.submit();
	}
	else{
		form3.action="/member/person.jsp?page="+pageCount;
		form3.submit();
	}
}
else if(form3.busjump.value<=pageCount){
var page=parseInt(form3.busjump.value);
   if(page==0){
      page=1;//如果你输入的是0，那么就让它等于1
      form3.action="/member/person.jsp?page="+page;
      form3.submit();
   }else{
      form3.action="/member/person.jsp?page="+page;
      form3.submit();
   }

}

}
//****判断是否是Number.
function fIsNumber (sV,sR){
var sTmp;
if(sV.length==0){ return (false);}
for (var i=0; i < sV.length; i++){
sTmp= sV.substring (i, i+1);
if (sR.indexOf (sTmp, 0)==-1) {return (false);}
}
return (true);
}

function del()
{
	pageform.submit();
}
function search()
{
	if(document.sform.id.value.replace(/\s+$|^\s+/g,"").length<=0&&document.sform.name.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("请输入查询条件：ID或者会员名！");
		document.sform.id.focus();
		return false;
	}
	sform.submit();
}
function ts()
{
	if(document.sform.stime.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("请输入起始时间！");
		document.sform.stime.focus();
		return false;
	}
	if(document.sform.etime.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("请输入截止时间！");
		document.sform.etime.focus();
		return false;
	}
	document.sform.method.value="TIMESEARCH";
	sform.submit();
}
</script>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=../img/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
<table width='100%' height='25' cellspacing='1' cellpadding='3' class="tablewidth">
  <tr bgcolor='#FFFFFF'> 
    <td bgcolor="#FFFFFF"> 
      
    </td>
  </tr>
</table>
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>序号</TD>
			<TD>会员名</TD>
			<TD>注册时间</TD>
			<TD>登陆次数</TD>
			<TD>上次登陆时间</TD>
			<TD>上次登陆IP</TD>
			<TD>选择</TD>
		  </TR>
	<script type="text/JavaScript">
	function allch()
	{
		for(i=0;i<<%=pagelist3.size()%>;i++)
		{
			document.pageform.checkit(i).checked=document.pageform.checkall.checked;
		}
	}
	</script>
		 <form action="MemberManage.shtml?method=DELMEMBER" method="post" name="pageform">
		  <TR align="center" bgColor=#ffffff>
		    <TD id=map></TD>
			<TD id=map>
			<a title="点击查看详细信息" href="javascript:" onclick="window.showModelessDialog('/member/pminfo.jsp?id=','newwin','dialogHeight:400px;   dialogWidth:   600px;   dialogTop:0px;   dialogLeft:   5px;   edge:   Raised;   center:   Yes;   help:   Yes;   resizable:   Yes;   status:yes;');">					
			</a>
			</TD>
			<TD id=map></TD>
			<TD id=map></TD>
			<TD id=map></TD>
			<TD id=map></TD>
			<TD id=map><input type="checkbox" name="checkit" value=""></TD>
		  </TR>
		  <TR align="right" >
			 <TD colspan="8" id=map>
			 <input type="checkbox" name="checkall" onClick="allch()" >&nbsp;全选
			 </TD>
			 </TR>
		</form>
		  </TBODY>
      </TABLE>
       </TD>
		</TR>
	     <TR>
    	   <TD align="right" vAlign=top >
             <TABLE width="100%" border=0 align="right" cellPadding=3 cellSpacing=1>
		     <TBODY>
		     <TR align="right" class=head>
			 <TD >
			 <form action="" method="post" name="form3">	
			 <input type="hidden" name="pageCount" value="" /><!--//用于给上面javascript传值-->
			 <input type="hidden" name="page" value="" /><!--//用于给上面javascript传值-->         
							<a href="#" onClick="top()"><img src="../img/first.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				<a href="#" onClick="pre()"><img src="../img/pre.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				 共条记录,共计页,当前第页&nbsp;&nbsp;&nbsp;
				<a href="#" onClick="next()"><img src="../img/next.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				<a href="#" onClick="last()"><img src="../img/last.gif" border="0" /></a>
			 第<input name="busjump" type="text" size="3" />页<a href="#" onClick="bjump()"><img src="../img/jump.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
			 </form>
             </TD>
             </TR>
			 </TBODY>
			 </TABLE>
		  </TD>
		</TR>
		<TR>
    	   <TD align="center" vAlign=top >
             <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1>
		     <TBODY>
		     <TR align="center" class=head>
			 <TD >
			 <input type="button" name="button" value="删除" onClick="del()" >
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

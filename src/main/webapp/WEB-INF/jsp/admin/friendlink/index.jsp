<%@ page language="java" import="java.util.*"  contentType="text/html;charset=utf-8"%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="${pageContext.request.contextPath }/css/Admin_Style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="/images/Common.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<script  language="javascript" >
function top(){
   	form3.action="/friendlink/index.jsp?page=1";
    form3.submit();
}
function last(){
    if(form3.pageCount.value==0){//如果总页数为0，那么最后一页为1，也就是第一页，而不是第0页
    form3.action="/friendlink/index.jsp?page=1";
    form3.submit();
	}else{
	form3.action="/friendlink/index.jsp?page="+form3.pageCount.value;
    	form3.submit();
	}
}
function pre(){
  var page=parseInt(form3.page.value);
  if(page<=1){
    alert("已至第一页");
  }else{
    form3.action="/friendlink/index.jsp?page="+(page-1);
    form3.submit();
  }
}

function next(){
  var page=parseInt(form3.page.value);
  var pageCount=parseInt(form3.pageCount.value);
  if(page>=pageCount){
    alert("已至最后一页");
  }else{
    form3.action="/friendlink/index.jsp?page="+(page+1);
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
	  form3.action="/friendlink/index.jsp?page=1";
	  form3.submit();
	}
	else{
		form3.action="/friendlink/index.jsp?page="+pageCount;
		form3.submit();
	}
}
else if(form3.busjump.value<=pageCount){
var page=parseInt(form3.busjump.value);
   if(page==0){
      page=1;//如果你输入的是0，那么就让它等于1
      form3.action="/friendlink/index.jsp?page="+page;
      form3.submit();
   }else{
      form3.action="/friendlink/index.jsp?page="+page;
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
function sub()
{
	form1.submit();
}
</script>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 
background=../img/MainBg.gif topMargin=0 scroll=no 
marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">
  <tr bgcolor='#FFFFFF'> 
    <td bgcolor="#FFFFFF"> 
      [<a href="/friendlink/index.jsp">友情链接管理</a>] 
      [<a href="/friendlink/edit.jsp?method=addflink">添加友情链接</a>] 
      
    </td>
  </tr>
</table>
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
     <tr class="head"> 
      <td width="5%" align="center">ID </td>
      <td  align="center">名称</td>
      <td  align="center">显示与否</td>
      <td  align="center">排序</td>
      <td  align="center">LOGO</td>
      <td  align="center">描述</td>
      <td  align="center">链接时间</td>
      <td  align="center">修改/删除</td>
    </tr>
<form name="form1" method="post" action="Common.shtml?method=orderfriendlink">
 
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"></td><input type="hidden" name="id" value="" >
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="#" target="_blank"></a> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><input type="text" name="ordervalue" value=""  maxlength="4" size="5"  onkeyup="this.value=this.value.replace(/\D/gi,'')" >(数字) </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="#" target="_blank"><img src="" width="88" height="31" border="0" ></a></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="/friendlink/edit.jsp?method=editfriendlink&id=">修改</a>/<a href="Common.shtml?method=delfriendlink&id="  onClick="return confirm('删除后不可恢复,你确实要删除吗?')">删除</a></td>
    </tr>
  </form>
	<tr bgcolor='#FFFFFF'>
	<td colspan='8' align='right'>
	<TABLE width="100%" border=0 align="right" cellPadding=3 cellSpacing=1>
		     <TBODY>
		     <TR align="right" >
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
	</td>
	</tr>
    <tr bgcolor='#FFFFFF'> 
      <td colspan="8" align="center"><input type="button" name="button" value="提交处理排序" onclick="sub()"></td>
    </tr>
</table>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>

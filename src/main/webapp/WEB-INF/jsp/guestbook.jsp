<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" %>
<%@ include file="front_frame/header.jsp" %>
<script  language="javascript" >
function top(){
   	form3.action="guestbook.jsp?page=1";
    form3.submit();
}
function last(){
    if(form3.pageCount.value==0){//如果总页数为0，那么最后一页为1，也就是第一页，而不是第0页
    form3.action="guestbook.jsp?page=1";
    form3.submit();
	}else{
	form3.action="guestbook.jsp?page="+form3.pageCount.value;
    	form3.submit();
	}
}
function pre(){
  var page=parseInt(form3.page.value);
  if(page<=1){
    alert("已至第一页");
  }else{
    form3.action="guestbook.jsp?page="+(page-1);
    form3.submit();
  }
}

function next(){
  var page=parseInt(form3.page.value);
  var pageCount=parseInt(form3.pageCount.value);
  if(page>=pageCount){
    alert("已至最后一页");
  }else{
    form3.action="guestbook.jsp?page="+(page+1);
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
	  form3.action="guestbook.jsp?page=1";
	  form3.submit();
	}
	else{
		form3.action="guestbook.jsp?page="+pageCount;
		form3.submit();
	}
}
else if(form3.busjump.value<=pageCount){
var page=parseInt(form3.busjump.value);
   if(page==0){
      page=1;//如果你输入的是0，那么就让它等于1
      form3.action="guestbook.jsp?page="+page;
      form3.submit();
   }else{
      form3.action="guestbook.jsp?page="+page;
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
</script>
<DIV align=center>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD >
<TABLE class=dragTable height=28 cellSpacing=0 cellPadding=0 width=100% align=center background=images/head1.gif border=0>
  <TBODY>
  <TR>
    <TD align=left class=head><FONT color=#000000>您现在的位置：<SPAN 
                        style="TEXT-DECORATION: none"><A href=""></A></SPAN>&gt;&gt; 
<A href="guestbook.jsp">访客留言</A></FONT>
	</TD>
	</TR>
  </TBODY>
</TABLE></TD></TR>
        <TR>
          <TD class=middle><br>
	<TABLE class=guestbook cellSpacing=0 cellPadding=0 width="100%" 
            border=0>
              <TBODY>
              <TR>
                <TD class=Ftd align=middle width="18%" rowSpan=2>
                  <DIV class=icon><IMG height=80  src="" width=80 border=0></DIV>
                  <DIV class=name></DIV></TD>
                <TD class=Ctd vAlign=top width="82%" height=75>
                  <TABLE style="TABLE-LAYOUT: fixed; WORD-WRAP: break-word" cellSpacing=0 cellPadding=0 width="80%" border=0>
                    <TBODY>
                    <TR>
                      <TD class=content align=left>
					  <IMG height=20 src="" width=20> 
                        <FIELDSET>
						<LEGEND>留言回复 </LEGEND>
                        (署名: /日期:)
						</FIELDSET>
					  </TD>
					 </TR>
					</TBODY>
				</TABLE>
				</TD>
				</TR>
              <TR>
                <TD class=Atd width="82%">
                时间： &nbsp;
				<A title="QQ:"  href="tencent://message/?uin=&Site=网站名称&Menu=yes"><IMG height=16 src="images/face/qq.gif" width=16 border=0></A>&nbsp;
				<A title="E_mail" href="mailto:"><IMG height=16 src="images/face/email.gif" width=16 border=0></A>&nbsp; 
				<A title=网址   href="" target="_blank" ><IMG height=16 src="images/face/ie.gif" width=16 border=0></A>&nbsp;  				
				<A title=博客地址   href="" target="_blank" ><IMG height=16 src="images/face/home.gif" width=16 border=0></A>&nbsp; 
				<A title=""  href="javascript:"><IMG height=16 src="images/face/ip.gif" width=16 border=0></A> 
				</TD>
			  </TR>
			  </TBODY>
			  </TABLE>
	<!--循环结束==================================================================-->        
          <br>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=right>
                <form action="" method="post" name="form3">	
			 <input type="hidden" name="pageCount" value="" /><!--//用于给上面javascript传值-->
			 <input type="hidden" name="page" value="" /><!--//用于给上面javascript传值-->         
			<a href="#" onClick="top()"><img src="images/first.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				<a href="#" onClick="pre()"><img src="images/pre.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				 共条记录,共计页,当前第页&nbsp;&nbsp;&nbsp;
				<a href="#" onClick="next()"><img src="images/next.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				<a href="#" onClick="last()"><img src="images/last.gif" border="0" /></a>
			 第<input name="busjump" type="text" size="3" />页<a href="#" onClick="bjump()"><img src="images/jump.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
			 </form>
                </TD>
                </TR>
                </TBODY>
                </TABLE></TD></TR>
        <TR>
          <TD class=foot>
            <H3 class=L></H3>
            <H3 class=R></H3></TD></TR></TBODY></TABLE>
<TABLE class=dragTable height=28 cellSpacing=0 cellPadding=0 width=100% align=center border=0>
        <TBODY>
        <TR>
          <TD align=left class=head>&nbsp;我要留言</TD></TR>
        <TR>
          <TD class=middle>
<STYLE type=text/css>.selected {
	BORDER-RIGHT: #ff9900 1px solid; BORDER-TOP: #ff9900 1px solid; FILTER: Alpha(opacity=100); BORDER-LEFT: #ff9900 1px solid; BORDER-BOTTOM: #ff9900 1px solid
}
.unselected {
	BORDER-RIGHT: #edf8dd 1px solid; BORDER-TOP: #edf8dd 1px solid; FILTER: Alpha(opacity=50); BORDER-LEFT: #edf8dd 1px solid; BORDER-BOTTOM: #edf8dd 1px solid
}
</STYLE>

<SCRIPT>
var prevIcon;
function icon(num){
num.className="selected";
if(typeof(prevIcon)!="undefined"){
prevIcon.className="unselected";
}else{
document.all.firstface.className="unselected";
}
if(num.className=="unselected"){
num.className="selected";
}
prevIcon=num;
document.all.face.value=num.childNodes(0).id ;
}
</SCRIPT>

            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <FORM name="form1" action="GuestBook.shtml?method=add" method="post" onSubmit="return checkGUEST()" >
              <TBODY>
              <TR>
                <TD width="24%" align="right">昵&nbsp;&nbsp;&nbsp;&nbsp;称: </TD>
                <TD align=left><INPUT name=nikename maxlength=20 value="" readonly> 联系Email: 
                <INPUT name=email maxlength=20> QQ: <INPUT size=11 name=qq maxlength=11> 
              </TD></TR>
              <TR>
                <TD width="24%" align="right">网站网址:</TD>
                <TD align=left><INPUT size=35 name=weburl  maxlength=100>  个人BLOG网址: 
                  <INPUT size=35 name=blogurl  maxlength=100> </TD></TR>
              <TR>
                <TD width="24%" align="right">表&nbsp;&nbsp;&nbsp;&nbsp;情:</TD>
                <TD align=left>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                    <TR>
                      <TD class=selected id=firstface style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=1 height=20  src="images/face/1.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=2 height=20 src="images/face/2.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=3 height=20 src="images/face/3.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=4 height=20 src="images/face/4.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=5 height=20 src="images/face/5.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=6 height=20 src="images/face/6.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=7 height=20 src="images/face/7.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=8 height=20 src="images/face/8.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=9 height=20 src="images/face/9.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=10 height=20 src="images/face/10.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=11 height=20 src="images/face/11.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=12 height=20 src="images/face/12.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=13 height=20 src="images/face/13.gif" width=20></TD>
                      <TD class=unselected style="CURSOR: hand" onclick=icon(this)>
                      <IMG id=14 height=20 src="images/face/14.gif" width=20></TD>
                      <TD vAlign=top align=middle><INPUT type=hidden value=1 name=face> </TD>
                      </TR>
                      </TBODY>
                      </TABLE>
                      </TD>
                      </TR>
              <TR>
                <TD width="24%" align="right">留言内容:</TD>
                <TD align=left><TEXTAREA name=content rows=7 cols=80></TEXTAREA> 
                </TD></TR>
              <TR>
                <TD width="24%">&nbsp;</TD>
                <TD align=left><INPUT type=submit value="提 交" name=Submit> 
            </TD></TR></FORM></TBODY></TABLE></TD></TR>
        <TR>
          <TD >
            <H3></H3>
            <H3></H3></TD></TR></TBODY></TABLE>
</DIV>
<%@ include file="front_frame/footer.jsp"%>
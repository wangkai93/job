<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>招聘就业网 </title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/theme1.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
<script>
   var StyleFile = "theme" + document.cookie.charAt(6) + ".css";
   document.writeln('<link rel="stylesheet" type="text/css" href="css/' + StyleFile + '">');
</script>
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="css/ie-sucks.css" />
<![endif]-->
</head>

<body onload="loadIndexData()">
	<div id="container">
    	<div id="header">
        	<h2>求职招聘网</h2>
    <div id="topmenu">
            	<ul>
                	<li class="current"><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li><a href="${pageContext.request.contextPath }/news/getnews">新闻中心</a></li>
                	<li><a href="${pageContext.request.contextPath }/job/getjobs">招聘信息</a></li>
                    <li><a href="${pageContext.request.contextPath }/resume/getresumes">求职信息</a></li>
                    <li><a href="${pageContext.request.contextPath }/guestbook/">留言板</a></li>
                    <li><a href="${pageContext.request.contextPath }/login/toLogin">登录</a></li>
                    <li><a href="${pageContext.request.contextPath }/register/prereg">注册</a></li>
              </ul>
          </div>
      </div>
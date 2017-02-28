<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="front_frame/header.jsp"%>
<div id="wrapper">
	<div id="content">
		<div id="rightnow">
			<h3 class="reallynow">
				<span>广告栏</span> <a href="#" class="add">更多</a> <br />
			</h3>
			<p class="youhave">这是广告栏</p>
		</div>
		<div id="infowrap">
			<div id="infobox">
				<h3>新闻</h3>
					<table>
					<thead>
						<tr>
							<th>最新新闻资讯</th>
						</tr>
					</thead>
					<tbody id="news">
					</tbody>
				</table>
			</div>
			<div id="infobox" class="margin-left">
				<h3>招聘信息</h3>
				<table>
					<thead>
						<tr>
							<th>最新招聘信息</th>
						</tr>
					</thead>
					<tbody id="jobs">
					</tbody>
				</table>
			</div>
			<div id="infobox">
				<h3>求职信息</h3>
				<table>
					<thead>
						<tr>
							<th>最新求职信息</th>
						</tr>
					</thead>
					<tbody id="resumes">
					</tbody>
				</table>
			</div>
			<div id="infobox" class="margin-left">
				<h3>留言</h3>
				<table>
					<thead>
						<tr>
							<th>最新留言</th>
						</tr>
					</thead>
					<tbody id="guestBooks">
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div id="sidebar">
		<ul>
			<li><h3>
					<a href="#" class="house">待定功能</a>
				</h3>
				<ul>
					<li><a href="#" class="report">待定功能1</a></li>
					<li><a href="#" class="report_seo">待定功能2</a></li>
					<li><a href="#" class="search">待定功能3</a></li>
				</ul></li>
		</ul>
	</div>
</div>
<jsp:include page="front_frame/footer.jsp" />
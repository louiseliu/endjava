<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="../../include/taglib.jsp"%> --%>
<%@ include file="include/namespace.jsp"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="Description" content="" />
	<meta name="Keywords" content="" />
	<link type="text/css" href="${duobei_styles}/help_page_style.less"rel="stylesheet/less" charset="utf-8" />
	<link type="text/css" href="${duobei_javascript}/wokaobox/wokaobox.css?v=${resourcesVersion}" rel="stylesheet" charset="utf-8" media="screen"/>
	<title>帮助文档 - 如何收费 - 多贝网</title>
	<script type="text/javascript" src="${duobei_javascript}/less-1.3.0.min.js" charset="utf-8"></script>
</head>
<body id="help_cq" style="padding: 0; margin: 0; height: 100%;">
	<%@include file="WEB-INF/jsp/portal/include/header.jsp"%>
	
	<shiro:hasAnyRoles name="ROLE_TEACHER,ROLE_USER">
		<div class="cf">
			<a class="fl" href="${pageContext.request.contextPath}/" title="去新版控制台">&gt;&nbsp;&nbsp;去新版控制台</a>  
		</div>
	</shiro:hasAnyRoles>
	
	<shiro:hasRole name="ROLE_TEACHER">
		<div class="toggle_console cf">
			<a class="fl" href="${pageContext.request.contextPath}/" title="去新版控制台">&gt;&nbsp;&nbsp;去老板控制台</a>  
		</div>
	</shiro:hasRole>  
	
	<shiro:guest>
		<c:if test="${c>2}">
			<div>访客</div>
			<div>访客</div>
			<div>访客</div>			
		</c:if>
	</shiro:guest>  
	
	<c:set var="testCset" value="${pageContext.request.contextPath}/123456789"></c:set>
	<div>${testCset}</div>
	<a href="${testCset}">test</a>
	
	<c:forEach items="${items}" var="item" begin="0" end="1" >
		<div class="test">${item.aa}</div>
	</c:forEach>
	
	<c:forEach var="item" items="${testItems}" >
		<div class="test">${item.aa}</div>
	</c:forEach>
	
	<div class="main">
		<div class="content cf">
			<p id="help_title">帮助&nbsp;&nbsp;&gt;&nbsp;&nbsp;课程如何收费？</p>
			<div id="main_content" class="cf">
				<div class="fl cf">
				<div id="left_content">
					<div id="left_top">
						<p>多贝支持支付宝账号收取课程费用，按照以下步骤即可发布收费课程。</p>
					</div>
					<div class="q_and_a">
						<p class="questions">1&nbsp;&nbsp;绑定支付宝帐号</p>
						<div class="solutions">
							<p class="solutions_p in_help_charge">登录多贝后，单击账号设置进入设置页面。</p>
							<img  src="http://img.duobei.com/help-charge-1-20121221.png" id="help_charge_1" class="in_help_charge_img"/>
							<p class="solutions_p in_help_charge">在设置页面，点击绑定支付宝按钮，登录支付宝账号后，即可使用此支付宝账号收取课程费用。<br>（注意：只有实名认证的支付宝账号才能成功开通收费功能）</p>
							<img  src="http://img.duobei.com/help-charge-2-20121221.png" id="help_charge_2" class="in_help_charge_img"/>
						</div>
					</div>
					<div class="q_and_a">
						<p class="questions">2&nbsp;&nbsp;发布收费课程</p>
						<div class="solutions">
							<p class="solutions_p in_help_charge">绑定支付宝账号后，即可在创建课程页面中选择使用支付宝收费，发布收费课程。</p>
							<img  src="http://img.duobei.com/help-charge-3-20121221.png" id="help_charge_3" class="in_help_charge_img"/>
						</div>
					</div>
				</div>
				<p id="last_update_time">最后更新&nbsp;&nbsp;2012年12月4日</p>
				</div>
				
				<div id="right_content" class="fl">
					<p class="problem_type">发布课程及网络教室</p>
					<div class="problems">
						<p class="problem_title">
							<a href="${pageContext.request.contextPath}/help/content/7" title="如何发布课程">如何发布课程</a>
						</p>
						<p class="problem_title">
							<a href="${pageContext.request.contextPath}/help/content/42" title="使用网络教室的常见问题">使用网络教室的常见问题</a>
						</p>
						<p class="problem_title">
							<a href="${pageContext.request.contextPath}/help/content/73" title="课程如何收费">课程如何收费</a>
						</p>
						<p class="problem_title">
							<a href="${pageContext.request.contextPath}/help/content/2450803749" title="在新浪微博播放课程回放">在新浪微博播放课程回放</a>
						</p>
					</div>
					<p class="problem_type">参加课程</p>
					<div class="problems bottom">
						<p class="problem_title">
							<a href="${pageContext.request.contextPath}/help/content/1729" title="如何参加直播">如何参加直播</a>
						</p>
						<p class="problem_title">
							<a href="${pageContext.request.contextPath}/help/content/142857" title="课程表: 查看参加的课程">课程表: 查看参加的课程</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="WEB-INF/jsp/portal/include/footer.jsp"%>
</body>
</html>
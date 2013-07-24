<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/taglib.jsp" %>
<%@ include file="../include/namespace.jsp" %>   
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>test</title>
	</head>
	<body>
		<!-- 多写几行注释，
		多写几行注释 -->
		
		<c:set var="num" value="${numTest}"></c:set>
		
		<div>${num}</div>
		<div>${num}</div>
		<div>${num}</div>  
		<div>${duobei_domain}</div>
		
		<c:set var="name" value="${userInfo.nickname}"></c:set>
		<div>${name}</div> 
		
		<div>
			<c:if test="${y > 3}">
			test
			</c:if>
		</div>
		
		<div>
		<c:choose>
			<c:when test="${y > 3}">
				dsfjsadsadaadsasadsaddalsdjflkdsfj
			</c:when>
			
			<c:otherwise>
				rurururuur
			</c:otherwise>
		</c:choose>	
		
		</div>
		
		sddsd
		<%@ include file="../test.jsp" %>
		
	</body>
</html>

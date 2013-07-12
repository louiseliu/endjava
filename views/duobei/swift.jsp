<html>
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>test</title>
	</head>
	<body>
		
		<c:set var="num" value="${numTest}"></c:set>
		
		<div>${num}</div>
		<div>${num}</div>
		<div>${num}</div>  
		
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

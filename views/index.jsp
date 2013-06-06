<html>
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>test</title>
	</head>
	<body>
		${pagination.items}
		<c:forEach items="${pagination.items}" var="t">
			${t.institution}
		</c:forEach>
		
		<c:if test="${y > 3}">
			test
		</c:if>
		
		<br>
	</body>
</html>

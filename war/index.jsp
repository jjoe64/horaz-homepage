<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
	<head>
		<title>Horaz</title>
		<link rel="stylesheet" href="/res/style.css" />
	</head>
	<body>
		<header>
			<img src="/res/logo.png" id="logo" alt="" />
			<h1>Horaz - Cross-Platform Mobile Java Framework</h1>
		</header>
		
		<%@ include file="navigation.jsp" %>
		<jsp:include page='<%=(String) request.getAttribute("includeJspNavigation")%>' />
		
		<div id="content">
			<jsp:include page='<%=(String) request.getAttribute("includeJspContent")%>' />
		</div>
		<footer>
			<p>&copy; Joe's App Factory UG (haftungsbeschr&auml;nkt)</p>
		</footer>
		
		<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
	</body>
</html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
	<head>
		<title>Horaz</title>
		<link rel="stylesheet" href="/res/style.css" />
		<script type="text/javascript" src="/res/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="/res/script.js"></script>
	</head>
	<body>
		<header>
			<img src="/res/logo.png" id="logo" alt="" />
			<h1>Horaz - build rich web apps in Java</h1>
			<a href="https://github.com/jjoe64/horaz" target="_blank"><img style="position: absolute; top: 0; right: 0; border: 0;z-index:9" src="https://a248.e.akamai.net/assets.github.com/img/30f550e0d38ceb6ef5b81500c64d970b7fb0f028/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6f72616e67655f6666373630302e706e67" alt="Fork me on GitHub"></a>
		</header>
		
		<%@ include file="top_navigation.jsp" %>
		<jsp:include page='<%=(String) request.getAttribute("includeJspSubNavigation")%>' />
		
		<div id="content">
			<% if (request.getAttribute("includeJspSub2Navigation") != null) { %>
				<jsp:include page='<%=(String) request.getAttribute("includeJspSub2Navigation")%>' />
			<% } %>
			<jsp:include page='<%=(String) request.getAttribute("includeJspContent")%>' />
		</div>
		<footer>
			<p>&copy; Joe's App Factory UG (haftungsbeschr&auml;nkt)</p>
		</footer>
		
		<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
		<script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<script type="text/javascript">
		try{ 
		var pageTracker = _gat._getTracker("UA-11485735-5");
		pageTracker._trackPageview();
		} catch(err) {} 
		</script>
	</body>
</html>


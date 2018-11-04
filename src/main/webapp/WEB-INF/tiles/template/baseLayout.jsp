<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initialscale=1.0">
<title><tiles:insertAttribute name="title" /></title>
<link href="http://getbootstrap.com/dist/css/bootstrap.css"	rel="stylesheet">
<link href="http://getbootstrap.com/examples/jumbotron/jumbotron.css" rel="stylesheet">
<link rel="stylesheet" href='<c:url value="/resources/css/styles.css" />' type="text/css" />
<script src='<c:url value="/resources/js/script.js" />' ></script>

</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right">
				<tiles:insertAttribute name="navigation" />
			</ul>
			<h1 class="text-muted">NANO Gadget</h1>Web Store
		</div>
		
		<section id="jumbotron" class="bg-1 text-center">
 		 	<tiles:importAttribute name="heading" />
 		 	<tiles:importAttribute name="tagline" />
 		 	<h1>
				<spring:message code="${heading}"/>
			</h1>
			<p class="lead">
				<spring:message code="${tagline}"/>
			</p>
 		 
		</section>
		<br>
		<div class="row">
			<tiles:insertAttribute name="content" />
		</div>
		<div class="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>
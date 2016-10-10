<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page import="com.codetube.model.videoclip.VideoClip"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Collections"%>
<!DOCTYPE HTML>
<html>
<head>
<title>CodeTube</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">

	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- bootstrap -->
<link href='<c:url value="/css/bootstrap.min.css"/>' rel='stylesheet'
	type='text/css' media="all" />
<!-- //bootstrap -->
<link href='<c:url value="/css/dashboard.css"/>' rel="stylesheet">
<!-- Custom Theme files -->
<link href='<c:url value="/css/style.css"/>' rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js" ></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<!-- //fonts -->
</head>
<body>

	<%@ include file="./header.jsp"%>
	<%@ include file="./sitebar.jsp"%>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="main-grids">
			<div class="recommended">

			<% 
			List<VideoClip> videosToLoad = (List<VideoClip>) request.getAttribute("videosToLoad"); 
			if (videosToLoad == null || videosToLoad.size() <= 0) {
				%><h2>No Videos available in <%= request.getAttribute("title")%></h2><%
			}
			%>


				<c:forEach items="${videosToLoad}" var="element" varStatus="loop">


					<c:if test="${loop.first or loop.index % 4 == 0}">
						<div class="recommended-grids">
					</c:if>

					<c:if test="${loop.first}">
						<div class="recommended-info">
							<h3><%= request.getAttribute("title")%></h3>
						</div>
					</c:if>

										<div class="col-md-3 resent-grid recommended-grid">
						<div class="resent-grid-img recommended-grid-img">
							<a href="./videoclip"><img src="images/r1.jpg" alt="" /></a>
							<div class="time small-time">
								<p>2:34</p>
							</div>
							<div class="clck small-clck">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div
							class="resent-grid-info recommended-grid-info video-info-grid">
							<h5>
								<a href="single.jsp" class="title">${element.performer}</a>
							</h5>
							<ul>
								<li><p class="author author-info">
										<a href="#" class="author">User Name</a>
									</p></li>
								<li class="right-list">
								<p class="views views-info">2,114,200 views</p>
										</li>
							</ul>
						</div>
					</div>


					<c:if test="${not loop.first and loop.index % 3 == 0}">
						<div class="clearfix"></div>
			</div>
			</c:if>

			</c:forEach>
			
			<div class="clearfix"></div>
			
		</div>
	</div>

	<%@ include file="./footer.jsp"%>

	</div>
	<div class="clearfix"></div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Regular link</a></li>
			<li role="presentation" class="disabled"><a role="menuitem"
				tabindex="-1" href="#">Disabled link</a></li>
			<li role="presentation"><a role="menuitem" tabindex="-1"
				href="#">Another link</a></li>
		</ul>
	</div>

	<script src="js/bootstrap.min.js"></script>

</body>
</html>
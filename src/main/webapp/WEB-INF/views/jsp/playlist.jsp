<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>

<%@page import="com.codetube.model.playlist.*"%>

<title>My Play a Entertainment Category Flat Bootstrap
	Responsive Website Template | single :: w3layouts</title>
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
<link href='<c:url value="/css/style.css"/>' rel='stylesheet'
	type='text/css' media="all" />
<script src='<c:url value="/js/jquery-1.11.1.min.js"/>'></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<!-- //fonts -->

<%
	Playlist list = (Playlist) request.getAttribute("playlist");
%>
</head>
<body>

	<%@ include file="./header.jsp"%>
	<%@ include file="./sitebar.jsp"%>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h3 class="headerPlaylist">Your Playlist</h3>
		<div class="main-grids">
			<div class="recommended">


				<c:forEach begin="1" end="12" varStatus="loop">

					<c:if test="${loop.first or loop.index % 5 == 0}">
						<div class="recommended-grids">
					</c:if>

					<c:if test="${loop.first}">
						<div class="recommended-info">

							<div class="playlist">
								<div class="playlistElement">
									<a href="playlist/<%=list.getId()%>"><img alt=""
										src="images/p1.png"> </a>
									<h2><%=list.getTitle()%></h2>
								</div>
							</div>
						</div>
					</c:if>


					<c:if test="${not loop.first and loop.index % 4 == 0}">
						<div class="clearfix"></div>
			</div>
			</c:if>

			</c:forEach>

		</div>
	</div>

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
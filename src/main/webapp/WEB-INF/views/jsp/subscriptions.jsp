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
<link href='<c:url value="/css/style.css"/>' rel='stylesheet'
	type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
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

				<c:if test="${empty videosToLoad}">
					<h2>No Videos available in ${title}</h2>
				</c:if>

				<c:set var="counter" value="1" />
				<c:forEach items="${videosToLoad}" var="element" varStatus="loop">

					<c:if test="${loop.first or loop.index % 4 == 0}">
						<div class="recommended-grids">
					</c:if>

					<c:if test="${loop.first}">
						<div class="recommended-info">

							<c:if test="${not empty userProfilePage}">
								<div class="heading">
							</c:if>
							<h3>${title}</h3>
							<c:if test="${not empty userProfilePage}">
						</div>
						<div class="heading-right">
							<a href="subscribe/<%=request.getAttribute("userProfilePage")%>"
								class="play-icon popup-with-zoom-anim"><%=request.getAttribute("subscribe_button")%></a>
						</div>
						<div class="clearfix"></div>
					</c:if>
			</div>
			</c:if>

			<c:if test="${element.user.userName != userName}">
				<div class="clearfix"></div>
				<div class="recommended-info">

					<div class="heading">
						<h3>${element.user.userName}</h3>
					</div>
					<div class="heading-right">
						<a href='<c:url value="/subscribe/${element.user.id}"/>'
							class="play-icon popup-with-zoom-anim">Unsubscribe</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</c:if>

			<div class="col-md-3 resent-grid recommended-grid">
				<div class="resent-grid-img recommended-grid-img">
					<div id="videoDiv">
						<a href='<c:url value="/player/${element.id}"/>'><video
								id="videoHome">
								<source src="videos/${element.path}" type="video/mp4">
							</video></a>
					</div>
				</div>
				<div class="resent-grid-info recommended-grid-info video-info-grid">
					<h5>
						<a href='<c:url value="/player/${element.id}"/>' class="title">${element.performer}</a>
					</h5>
					<ul>
						<li><p class="author author-info">
								<a href='<c:url value="/user/${element.user.id}"/>'
									class="author">${element.user.userName}</a>
							</p></li>
						<li class="right-list">
							<p class="views views-info">${element.viewCount}views</p>
						</li>
					</ul>
				</div>
			</div>

			<c:if test="${counter % 4 == 0}">
				<div class="clearfix"></div>
		</div>
		</c:if>

		<c:set var="counter" value="${counter + 1}" />
		<c:if test="${not loop.first and element.user.userName != userName}">
			<c:set var="counter" value="1" />
		</c:if>

		<c:set var="userName" value="${element.user.userName}" />

		</c:forEach>

		<div class="clearfix"></div>
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
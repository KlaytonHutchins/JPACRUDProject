<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${song.title}- ${song.artist}</title>
<jsp:include page="../bootstrapHead.jsp" />
<link rel="stylesheet" href="../css/main.css">
</head>
<body>
	<jsp:include page="../navbar.jsp" />
	<div class="container" background-color="#20c997">
		<div class="row" style="text-align: center"><h1>${song.title}
			<c:choose>
				<c:when test="${! empty song.featuredArtist}"> (feat. ${song.featuredArtist}) </c:when>
			</c:choose>
			<c:choose>
				<c:when test="${! empty song.remixBy}">- ${song.remixBy} Remix</c:when>
			</c:choose>
		</h1></div>
		<div class="row g-0">
			<div class="col-7 text-center">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/${song.videoURL}?&autoplay=1"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
			<div class="col-5" style="text-align: left">
				<div class="row"><h3><u>Artist:</u>&nbsp;${song.artist}</h3></div>
				<div class="row"><h3><u>Album:</u>&nbsp;<c:choose>
						<c:when test="${!empty song.album}">${song.album}&nbsp;</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${song.isSingle}">(Single)</c:when>
					</c:choose></h3></div>
				<div class="row"><h3><u>Genre:</u>&nbsp;${song.genre}</h3></div>
				<div class="row"><h3><u>Length:</u>&nbsp;${song.lengthInSeconds} seconds</h3></div>
				<div id="length" value="${song.lengthInSeconds}"></div>
				<div class="row"><h3><u>Release Year:</u>&nbsp;${song.releaseYear}</h3></div>
			</div>
		</div>
		<div class="row">
		<div class="col-3" style="text-align:center">
			<form action="updateSong.do" method="get">
				<button name="id" value="${song.id}" type="submit" class="btn btn-dark">Update Song Info</button>
			</form></div>
		<div class="col-3" style="text-align:center">
			<form action="showPrevious.do" method="get">
				<button name="id" value="${song.id}" type="submit" class="btn btn-dark">Previous Song</button>
			</form></div>
		<div class="col-3" style="text-align:center">
			<form action="showNext.do" method="get" id="next" name="next">
				<button id="here" name="id" value="${song.id}" type="submit" class="btn btn-dark">Next Song</button>
			</form></div>
		<div class="col-3" style="text-align:center">
			<form action="deleteSong.do" method="post">
				<button name="id" value="${song.id}" type="submit" class="btn btn-dark">Delete This Song</button>
			</form></div>
		</div>

	</div>
	<!-- <script type="text/javascript" src="../static/nextSong.js" charset="utf-8"></script> -->
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>
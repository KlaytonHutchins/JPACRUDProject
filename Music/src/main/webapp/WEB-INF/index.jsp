<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Klayton's Music Playlist</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp"/>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Title</th>
					<th>Artist</th>
					<th>Album</th>
					<th>Genre</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="aSong" items="${songs}">
					<tr>
						<td><iframe width="178" height="100"
					src="https://www.youtube.com/embed/${aSong.videoURL}"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe></td>
						<td><a href="show.do?id=${aSong.id}">${aSong.title}</a><c:choose><c:when test="${! empty aSong.featuredArtist}">&nbsp;(feat. ${aSong.featuredArtist})</c:when></c:choose><c:choose><c:when test="${! empty aSong.remixBy}">&nbsp;- ${aSong.remixBy} Remix</c:when></c:choose></td>
						<td>${aSong.artist}</td>
						<td><c:choose><c:when test="${!empty aSong.album}">${aSong.album}&nbsp;</c:when></c:choose><c:choose><c:when test="${aSong.isSingle}">(Single)</c:when></c:choose></td>
						<td>${aSong.genre}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${song.title} - ${song.artist}</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
<div class="row">
<div class="col-8">
<iframe width="560" height="315" src="https://www.youtube.com/embed/${song.videoURL}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<div class="col-4">info</div>
</div>
<h1>${song.title} <c:choose><c:when test="${! empty song.featuredArtist}"> (feat. ${song.featuredArtist}) </c:when></c:choose><c:choose><c:when test="${! empty song.remixBy}">- ${song.remixBy} Remix</c:when></c:choose></h1>
<h2>${song.artist}</h2>
<h2><c:choose><c:when test="${!empty song.album}">${song.album} </c:when></c:choose><c:choose><c:when test="${song.isSingle}">(Single)</c:when></c:choose></h2>
<h2>${song.genre}</h2>
<form action="updateSong.do" method="get"><button name="id" value="${song.id}" type="submit" class="btn btn-dark">Update Song Info</button></form>
<form action="deleteSong.do" method="post"><button name="id" value="${song.id}" type="submit" class="btn btn-dark">Delete This Song</button></form>

</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>
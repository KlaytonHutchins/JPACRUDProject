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
<div class="container">
<h1>${song.title} <c:choose><c:when test="${! empty song.featuredArtist}"> (feat. ${song.featuredArtist}) </c:when></c:choose><c:choose><c:when test="${! empty song.remixBy}">- ${song.remixBy} Remix</c:when></c:choose></h1>
<h2>${song.artist}</h2>
<h2><c:choose><c:when test="${!empty song.album}">${song.album} </c:when></c:choose><c:choose><c:when test="${song.isSingle}">(Single)</c:when></c:choose></h2>
<h2>${song.genre}</h2>
<form action="updateSong.do?id=${song.id}"><button type="submit" class="btn btn-dark">Update Song Info</button></form>
<form action="deleteSong.do?id=${song.id}"><button type="submit" class="btn btn-dark">Delete This Song</button></form>

</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>
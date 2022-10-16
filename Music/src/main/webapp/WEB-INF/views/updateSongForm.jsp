<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update ${song.title} - ${song.artist}</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<div class="container">
<form action="updateSong.do" method="post">
<input name="id" value="${song.id}" type="hidden">
<!-- title -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Title</span>
  <input name="update-title" type="text" class="form-control" placeholder="${song.title}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- artist -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Artist</span>
  <input name="update-artist" type="text" class="form-control" placeholder="${song.artist}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- featured artist -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Featuring</span>
  <input name="update-featuredArtist" type="text" class="form-control" placeholder="${song.featuredArtist}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- remixed by -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Remixed by</span>
  <input name="update-remixBy" type="text" class="form-control" placeholder="${song.remixBy}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- album -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Album</span>
  <input name="update-album" type="text" class="form-control" placeholder="${song.album}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- single -->

<input name="update-isSingle" value="off" type="hidden">

<c:choose><c:when test="${song.isSingle}">
<div class="form-check form-switch">
  <input name="update-isSingle" class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
  <label class="form-check-label" for="flexSwitchCheckChecked">Released As Single</label>
</div>
</c:when>
<c:otherwise>
<div class="form-check form-switch">
  <input name="update-isSingle" class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
  <label class="form-check-label" for="flexSwitchCheckDefault">Released As Single</label>
</div>
</c:otherwise></c:choose>
<!-- genre -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Genre</span>
  <input name="update-genre" type="text" class="form-control" placeholder="${song.genre}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- length -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Length</span>
  <input name="update-length" type="text" class="form-control" placeholder="${song.lengthInSeconds}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- release year -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Release Year</span>
  <input name="update-releaseYear" type="text" class="form-control" placeholder="${song.releaseYear}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- video url -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon3">https://www.youtube.com/watch?v</span>
  <input name="update-videoURL" type="text" class="form-control" placeholder="${song.videoURL}" id="video-url" aria-describedby="basic-addon3">
</div>
<!-- album url -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon3">https://www.</span>
  <input name="update-albumURL" type="text" class="form-control" placeholder="${song.albumURL}" id="album-url" aria-describedby="basic-addon3">
</div>
<button type="submit" class="btn btn-dark">Update Song Info</button>
</form>
</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>
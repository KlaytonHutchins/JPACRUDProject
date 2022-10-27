<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Song</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
<form action="addSong.do" method="post">
<!-- title -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Title</span>
  <input name="title" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- artist -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Artist</span>
  <input name="artist" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- featured artist -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Featuring</span>
  <input name="featuredArtist" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- remixed by -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Remixed by</span>
  <input name="remixBy" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- album -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Album</span>
  <input name="album" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- single -->

<input name="isSingle" value="off" type="hidden">

<div class="form-check form-switch">
  <input name="make-isSingle" class="form-check-input" type="checkbox" role="switch" id="isSingle">
  <label class="form-check-label" for="isSingle">Released As Single</label>
</div>

<!-- genre -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Genre</span>
  <input name="genre" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- length -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Length</span>
  <input name="lengthInSeconds" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- release year -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Release Year</span>
  <input name="releaseYear" type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<!-- video url -->
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon3">https://www.youtube.com/embed/</span>
  <input name="videoURL" type="text" class="form-control" id="video-url" aria-describedby="basic-addon3">
</div>
<button type="submit" class="btn btn-dark">Add This Song</button>
</form>
</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>
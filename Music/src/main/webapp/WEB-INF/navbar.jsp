<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg" style="background-color: #0E9F6C">
  <div class="container-fluid">
    <strong style="color:white">Music Playlist</strong>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.do" style="color:white">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="showAll.do" style="color:white">View All Songs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addSong.do" style="color:white">Add New Song</a>
        </li>
      </ul>
      <form action ="search.do" class="d-flex" role="search">
        <input name="search" class="form-control me-2" type="search" placeholder="Title, Artist, Album" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
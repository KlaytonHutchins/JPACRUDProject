<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<div class="container">
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Title</th>
					<th>Artist</th>
					<th>Album</th>
					<th>Genre</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="aSong" items="${songs}">
					<tr>
						<td><a href="show.do?id=${aSong.id}">${aSong.title}</a><c:choose><c:when test="${! empty aSong.featuredArtist}"> (feat. ${aSong.featuredArtist}) </c:when></c:choose><c:choose><c:when test="${! empty aSong.remixBy}">- ${aSong.remixBy} Remix</c:when></c:choose></td>
						<td>${aSong.artist}</td>
						<td><c:choose><c:when test="${!empty aSong.album}">${aSong.album} </c:when></c:choose><c:choose><c:when test="${aSong.isSingle}">(Single)</c:when></c:choose></td>
						<td>${aSong.genre}</td>
						<%-- <td>${aSong.}</td> --%>
						<td></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Songs</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
	<div class="container">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Title</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="aSong" items="${songs}">
					<tr>
						<td>${aSong.id}</td>
						<td><a href="show.do?id=${aSong.id}">${aSong.title}</a> <c:choose><c:when test="${! empty aSong.remixBy}">- ${aSong.remixBy} Remix</c:when></c:choose></td>
						<td>${aSong.artist}</td>
						<td>${aSong.album}</td>
						<%-- <td>${aSong.}</td> --%>
						<td></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>
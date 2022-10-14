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
		<h1>Music</h1>
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
						<td>${aSong.title}</td>
						<%-- <td><a href="getSong.do?fid=${aSong.id}">${aSong.title}</a></td> --%>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>
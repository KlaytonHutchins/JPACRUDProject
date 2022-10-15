<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${song.title}</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<div class="container">
<h1>${song.title} <c:choose><c:when test="${! empty song.remixBy}">- ${song.remixBy} Remix</c:when></c:choose></h1>
</div>
<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>
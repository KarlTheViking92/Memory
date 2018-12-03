<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Match History</title>
<jsp:include page="../resources/header.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<h1>Match History</h1>
	
	<c:forEach items="${gamesOfUser}" var="i">
		<h1>"${i.getGameID()}"</h1>
		<c:forEach items="${i.getPlayers()}" var="p">
			<h2>"${p.getUsername()}"</h2>
		</c:forEach>
	</c:forEach>
</body>
</html>
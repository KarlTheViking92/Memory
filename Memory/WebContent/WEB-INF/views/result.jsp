<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Game review</title>

<jsp:include page="../resources/header.jsp" />
<link rel="stylesheet" type="text/css" href="resources/css/result.css" />
<script type="text/javascript" src="resources/js/result.js"></script>


</head>
<body>
	<jsp:include page="navbar.jsp" />
	<div class="container" style="margin-top: 10px;">
		<h1>Game Review</h1>


		<!-- <hr>
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div id="allOut" class="rgu-al alert alert-danger" role="alert"
					hidden="true">
					<button type="button" id="btn-rgu" class="btn close"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<strong> <span class="glyphicon glyphicon-remove"
						aria-hidden="true"></span> ERROR!
					</strong>
					<p>
						Pay Attention, all the <strong>User</strong> was disconnected!
					</p>
				</div>
			</div>
		</div> -->




		<div class="row">
			<section class="content">
				<div class="col-md-8 col-md-offset-2">
					<div id="lose" hidden="true">
						<h2 align="center">
							<%-- <c:forEach var="i" begin="1" end="3">
								<i style="color: red;" class="fa fa-frown-o fa-${i }x"
									aria-hidden="true"></i>
							</c:forEach>
 --%>						<i style="color: red;" class="fas fa-frown-open fa-7x"></i>
							<strong> You Lose </strong>
							<i style="color: red;" class="fas fa-frown-open fa-7x"></i>
						<%-- 	<c:forEach var="i" begin="1" end="3" step="1">
								<i style="color: red;" class="fa fa-frown-o fa-${4-i }x"
									aria-hidden="true"></i>
							</c:forEach> --%>
						</h2>
					</div>

					<div id="win" hidden="true">
						<h2 align="center">
							<%-- 		<c:forEach var="i" begin="1" end="3">
									<i style="color: green;" class="fas fa-smile-beam fa-${i }x"></i>
							</c:forEach> --%>
							<i style="color: green;" class="fas fa-smile-beam fa-7x"></i>
							<strong> You Win </strong>
							<i style="color: green;" class="fas fa-smile-beam fa-7x"></i>
							<%-- <c:forEach var="i" begin="1" end="3" step="1">
								<i style="color: green;" class="fa fa-smile-o fa-${4-i }x"
									aria-hidden="true"></i>
							</c:forEach> --%>
						</h2>
					</div>

					<div class="panel panel-default">
						<div class="panel-body">
							<!-- <div class="pull-right">
								<div class="btn-group">
									<button type="button" class="btn btn-success btn-filter"
										data-target="ended">Ended</button>
									<button type="button" class="btn btn-warning btn-filter"
										data-target="gaming">Gaming</button>
									<button type="button" class="btn btn-danger btn-filter"
										data-target="disconnected">Disconnected</button>
									<button type="button" class="btn btn-default btn-filter"
										data-target="all">All</button>
								</div>
							</div> -->

							<div class="table-container">
								<table id="reviewTable" class="table table-filter">
									<col width="40">
									<col width="80">
									<col width="80">
									<col width="80">
									<thead>
										<tr>
											<th colspan=2><span>Player <i class="far fa-user"></i></span> </th>
											<th><span>Time <i class="far fa-clock"></i></span></th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody id="reviewbody">

										<tr>
											<td colspan=2>Player</td>
											<td>time</td>
											<td>win</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="row">
			<div class="col-md-2 col-md-offset-2">
				<button type="button" id="exit" class="btn btn-primary">Return to Homepage</button>
			</div>
		</div>
	</div>

</body>
</html>
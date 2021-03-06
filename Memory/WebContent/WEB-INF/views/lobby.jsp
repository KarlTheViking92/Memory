<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lobby</title>
<jsp:include page="../resources/header.jsp" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/checkbox.css"
	type="text/css">
<script type="text/javascript">
	var myContextPath = "${pageContext.request.contextPath}"
</script>
<script type="text/javascript" src="resources/js/lobby.js"></script>

</head>
<body>
	<jsp:include page="navbar.jsp" />
	<div class="container bootstrap snippets">
		<div class="row">
			<div class="col-md-12">
				<!-- start:chat room -->
				<div class="box">
					<div class="chat-room">
						<!-- start:aside kiri chat room -->
						<aside class="kiri-side">
							<div class="user-head"></div>
							<ul class="chat-list">
								<li style="text-align: center"><h3>Utenti nalla Lobby</h3></li>
								<li>
									<div id="lobby-container"></div>
								</li>
								<li><a id="g_button" style="display: none"><button
											id="createGame" style="font-size: 10px">
											Start Game<span class="fa-stack"> <i
												class="fa fa-square fa-stack-2x" style="color: green"></i> <i
												class="fa fa-gamepad fa-stack-1x fa-inverse"></i>
											</span>
										</button> </a></li>
								<li><a
									href="${pageContext.request.contextPath}/leaveLobby?lobby=${lobby.name}"
									class="table-link danger"><button style="font-size: 10px">
											Leave Lobby <span class="fa-stack"><i
												class="fa fa-trash" aria-hidden="true"></i> </span>
										</button> </a></li>
								<li><div class="col-sm-12" id="difficulty"
										style="display: none">
										<h5>Select Game Difficult</h5>
										<div class="col-sm-12">
											<div class="radio">
												<label> <input type="radio" name="o3" value="EASY"
													checked> <span class="cr"><i
														class="cr-icon fa fa-circle"></i></span>Easy
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" name="o3" value="NORMAL">
													<span class="cr"><i class="cr-icon fa fa-circle"></i></span>Normal
												</label>
											</div>
											<div class="radio">
												<label> <input type="radio" name="o3" value="HARD">
													<span class="cr"><i class="cr-icon fa fa-circle"></i></span>Hard
												</label>
											</div>
										</div>
									</div></li>

							</ul>
						</aside>
						<!-- end:aside kiri chat room -->

						<!-- start:aside tengah chat room -->
						<aside class="tengah-side">
							<div class="chat-room-head" align="center">

								<h3 style="text-align: center">${lobby.getName()}</h3>
							</div>
							<div class="group-rom" id="messageUpdate"></div>
							<footer>

								<div id="chat">
									<input type="text" onfocus="this.value=''" id="sendMessage">
									<button class="btn btn-danger" id="buttonMessage">Send</button>
								</div>


							</footer>
						</aside>
						<!-- end:aside tengah chat room -->



					</div>
				</div>
				<!-- end:chat room -->
			</div>
		</div>
	</div>
</body>
</html>
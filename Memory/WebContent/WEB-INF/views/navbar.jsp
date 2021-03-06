<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-default navbar-inverse" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" class="active"
				href="${pageContext.request.contextPath}/">MEMORY GAME</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a
					href="${pageContext.request.contextPath}/">Home</a></li>
				<c:if test="${user.username != null and inGame !='true'}">
					<li class="divider"></li>
					<li><a href="${pageContext.request.contextPath}/matchHistory">Match
							history</a></li>
					<li class="divider"></li>
				</c:if>
				
			</ul>

			<c:if test="${user == null}">
				<ul class="nav navbar-nav navbar-right">
				</ul>
			</c:if>
			<c:if test="${user != null}">
				<ul class="nav navbar-nav navbar-right">
					<li><p class="navbar-text">
							<font color="white">Welcome ${user.username}</font>
						</p></li>
					<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
				</ul>
			</c:if>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="/customers/" var="homeURL" />
<spring:url value="/customers/list" var="listURL" />
<spring:url value="/customers/add" var="addURL" />

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${homeURL}">Admon Clientes</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${homeURL}">Home <span
						class="sr-only">(current)</span></a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Operaciones <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${listURL }">Clientes</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="${addURL }">Nuevo Cliente</a></li>
					</ul></li>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
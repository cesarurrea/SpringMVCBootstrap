<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:url value="/customers/save" var="saveURL"></spring:url>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="../templates/header.jsp"></jsp:include>
<body>
	<jsp:include page="../templates/nav.jsp"></jsp:include>

	<div class="container">
		<h1>Adicionar un nuevo Cliente</h1>


		<form:form method="POST" modelAttribute="CustomerForm"
			action="${saveURL }">
			<form:hidden path="id" />

			<div class="form-group">
				<label for="inputFirstname" class="col-sm-2 control-label">FirstName</label>
				<div class="col-sm-10">
					<form:input path="firstname" class="form-control"
						name="inputFirstname" placeholder="Nombres" />
				</div>
			</div>
			<div class="form-group">
				<label for="inputLastname" class="col-sm-2 control-label">LastName</label>
				<div class="col-sm-10">
					<form:input path="lastname" class="form-control"
						name="inputFirstname" placeholder="Apellidos" />
				</div>
			</div>
			<div class="form-group">
				<label for="inputGender" class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-10">
					<form:input path="gender" class="form-control" name="inputGender"
						placeholder="Sexo" />
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress" class="col-sm-2 control-label">Address</label>
				<div class="col-sm-10">
					<form:input path="address" class="form-control" name="inputAddress"
						placeholder="Dirección" />

				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default" value="save">Aceptar</button>
				</div>
			</div>


		</form:form>
	</div>

	<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>
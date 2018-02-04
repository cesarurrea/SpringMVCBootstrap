<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="../templates/header.jsp" />
<body>
	<jsp:include page="../templates/nav.jsp" />

	<div class="container">

		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>firstname</th>
						<th>lastname</th>
						<th>gender</th>
						<th>address</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listCustomer }" var="customer">
						<tr>
							<td>${customer.id }</td>
							<td>${customer.firstname }</td>
							<td>${customer.lastname }</td>
							<td>${customer.gender }</td>
							<td>${customer.address }</td>
							<td><spring:url value="/customers/update/${customer.id }"
									var="updateURL" />
								<button type="button" class="btn btn-link"
									onclick="location.href='${updateURL}'">Update</button></td>
							<td><spring:url value="/customers/delete/${customer.id }"
									var="deleteURL" />
								<button type="button" class="btn btn-danger"
									onclick="if (confirmaBorrado(event) == true){location.href='${deleteURL}'}">Delete</button></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>


	<jsp:include page="../templates/footer.jsp" />
</body>
</html>
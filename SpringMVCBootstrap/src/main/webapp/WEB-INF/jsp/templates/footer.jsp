<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<spring:url value="/resources/js/bootstrap.min.js"
	var="bootstrapMinJSURL" />
<script src="${bootstrapMinJSURL }"></script>

<script type="text/javascript">
	/*$(".btn-danger").click(function() {
		alert("Handler for .click() called.");
	});*/
	
	function confirmaBorrado(event){
		var r = confirm("Está seguro de eliminar el registro?");
		return r;
	}

	/*$(".btn-danger").click(function() {
		var r = confirm("Está seguro de eliminar el registro?");

		return r;
	});*/
</script>
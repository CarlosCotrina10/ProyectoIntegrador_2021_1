<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Login</title>
<!-- Custom fonts for this template-->
<script type="text/javascript" src="js/bs4-form-validation.js"></script>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<link href="css/bootstrapValidator.css" rel="stylesheet">

</head>

<style>
	.help-block{
		color: red;
    	margin-left: 15px;
	}
</style>

<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-6 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-12">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Bienvenido !!!</h1>
									</div>
									<form class="user" method="post" action="logeo" id="form-logeo">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="usuario" name="usuario" 
												placeholder="Ingrese correo...">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="clave" name="clave" placeholder="Contraseña">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck"> <label
													class="custom-control-label" for="customCheck">Recordarme</label>
											</div>
										</div>
										<button type="submit" id="login"
											class="btn btn-primary btn-user btn-block">Ingresar</button>									
										<br>
										<c:if test="${requestScope.mensaje != null}">
										<div class="form-group text-center">
											<label class="text-danger">									    
										        <strong>${requestScope.mensaje}</strong>
										    </label>
										</div>
					               				
									    </c:if>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="/register">Crear nueva cuenta</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/bootstrapValidator.js" type="text/javascript"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		validarForm();
		$('#form-logeo').bootstrapValidator({
	        message: 'This value is not valid',
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove text-danger',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	        	"usuario":{
	                selector: "#usuario",
	                validators:{
	                    notEmpty: {
	                         message: 'El nombre es obligatorio'
	                    }
	                }
	            },
	            "clave":{
	                selector: "#clave",
	                validators:{
	                    notEmpty: {
	                         message: 'La clave es obligatorio'
	                    }
	                }
	            },
	          
	        }   
	    });
	});
		
	function validarForm(){
		
	}
	</script>

</body>
</html>
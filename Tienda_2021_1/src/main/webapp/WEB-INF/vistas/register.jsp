<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Register</title>
<!-- Custom fonts for this template-->
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
		<div class="row justify-content-center">
			<div class="col-xl-6 col-lg-12 col-md-9">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-12">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Crear Cuenta!!!</h1>
									</div>
									<form class="user" id="form-registro">
									<input type="hidden" name="tipo.idTipo" value="1">
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">
												<input type="text" class="form-control form-control-user" required="required"
													id="nombre" name="nombre" placeholder="Ingrese su nombre">
											</div>
											<div class="col-sm-6">
												<input type="text" class="form-control form-control-user"
													id="apellido" name="apellido"
													placeholder="Ingrese su apellido">
											</div>
										</div>
										<div class="form-group">
											<select class="form-control"
												style="font-size: .8rem; border-radius: 10rem; height: 50px;"
												name="distrito.codDistrito" id="distrito">
												<option value="">Seleccione un distrito</option>
											</select>
										</div>
										<div class="form-group row">
											<div class="col-sm-6 mb-3 mb-sm-0">
												<input type="text" class="form-control form-control-user"
													id="usuario" name="usuario" placeholder="Ingrese usuario">
											</div>
											<div class="col-sm-6">
												<input type="password"
													class="form-control form-control-user" id="clave"
													name="clave" placeholder="Ingrese la contraseña">
											</div>
										</div>
										<button type="button" id="registrar" 
											class="btn btn-primary btn-user btn-block">Registrar</button>
										<hr>
									</form>
									<div class="text-center">
										<a class="small" href="/login">¿Ya tienes una cuenta?
											Logeate!</a>
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
		mostrarDistritos();
		validarForm();
		registrar();				
		
	});
	
	function mostrarDistritos(){
		$.getJSON("listaDistrito", {}, function(data){
			$.each(data, function(i,item){
				$("#distrito").append("<option value="+item.codDistrito +">"+ item.nomDistrito +"</option>");
				
			});
		});
	}
	
	function registrar(){
		$("#registrar").click(function (){ 
			var validator = $('#form-registro').data('bootstrapValidator');
		
			validator.validate();
			
			if(validator.isValid()){
				$.ajax({

					type: 'POST',
					data: $('#form-registro').serialize(),
					url: 'registrar',
					success: function(data){
						alert("Registro existoso");
						limpiar();
						validator.resetForm();
					},
					error: function(){
						alert("error");				
					}

				});
			}						
		});
	}

	
	function validarForm(){
		$('#form-registro').bootstrapValidator({
	        message: 'This value is not valid',
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove text-danger',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	        	"nombre":{
	                selector: "#nombre",
	                validators:{
	                    notEmpty: {
	                         message: 'El nombre es obligatorio'
	                    },
	                    stringLength: {
	                        min: 2,
	                        max: 15,
	                        message: 'El nombre es de 2 a 15 caracteres'
	                    },
	                }
	            },
	            "apellido":{
	                selector: "#apellido",
	                validators:{
	                    notEmpty: {
	                         message: 'El apellido es obligatorio'
	                    },
	                    stringLength: {
	                        min: 2,
	                        max: 25,
	                        message: 'El apellido es de 2 a 25 caracteres'
	                    },
	                }
	            },
	            "[distrito.codDistrito]":{
	                selector: "#distrito",
	                validators:{
	                    notEmpty: {
	                         message: 'El distrito es obligatorio'
	                    }
	                }
	            },
	            "usuario":{
	                selector: "#usuario",
	                validators:{
	                    notEmpty: {
	                         message: 'El usuario es obligatorio'
	                    },
	                    stringLength: {
	                        max: 45,
	                        message: 'La clave es 45 caracteres maximo'
	                    },
	                }
	            },
	            "clave":{
	                selector: "#clave",
	                validators:{
	                    notEmpty: {
	                         message: 'La clave es obligatorio'
	                    },
	                    stringLength: {
	                        min: 6,
	                        max: 12,
	                        message: 'La clave es de 6 a 12 caracteres'
	                    },
	                }
	            },
	          
	        }   
	    });
	}
	
	function limpiar(){
		$("#nombre").val("");
		$("#apellido").val("");
		$("#distrito").val("");
		$("#usuario").val("");
		$("#clave").val("");
	}

	</script>

</body>
</html>
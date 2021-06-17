<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Registro Usuario</title>
<!-- Custom fonts for this template-->
<link href="css/bootstrapValidator.css" rel="stylesheet" type="text/css">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>
<style>
.help-block {
	color: red;
	margin-left: 15px;
}
</style>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<jsp:include page="topBarAdmin.jsp"></jsp:include>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Cuerpo -->
					<div class="row">

						<div class="col-xl-12 col-lg-12">

							<!-- Area Chart -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">Registro de
										Producto</h6>
								</div>
								<div class="card-body">
									<form class="" id="id_form_registrar"
										action="registraActualizaCrudProducto" method="post">
										<div class="form-group row">
											<label for="nomProd" class="col-xl-2 col-sm-2 col-form-label">Nombre</label>
											<div class="col-xl-10 col-sm-10">
												<input type="text" class="form-control" id="id_nombre"
													name="nomProd" placeholder="Ingrese nombre del producto">
											</div>
										</div>
										<div class="form-group row">
											<label for="descripcion"
												class="col-xl-2 col-sm-2 col-form-label">Descripción</label>
											<div class="col-xl-10 col-sm-10">
												<textarea class="form-control" name="descripcion"
													id="id_descripcion" rows="5"
													placeholder="Ingrese descripción del producto"></textarea>
											</div>
										</div>
										<div class="form-group row">
											<label for="stock" class="col-xl-2 col-sm-2 col-form-label">Stock</label>
											<div class="col-xl-4 col-sm-5">
												<input type="number" min="0" class="form-control"
													id="id_stock" name="stock" placeholder="0">
											</div>
											<label for="precio" class="col-xl-2 col-sm-2 col-form-label">Precio</label>
											<div class="col-xl-4 col-sm-5">
												<input type="number" min="0" step="0.1" class="form-control"
													id="id_precio" name="precio" placeholder="0.0">
											</div>
										</div>
										<div class="form-group row">
											<label for="categoria"
												class="col-xl-2 col-sm-2 col-form-label">Categorias</label>
											<div class="col-xl-4 col-sm-5">
												<select class="form-control" name="categoria"
													id="id_categoria">
													<option value=" ">Seleccione una categoria</option>
												</select>
											</div>
											<label for="estado" class="col-xl-2 col-sm-2 col-form-label">Estado</label>
											<div class="col-xl-4 col-sm-5">
												<select class="form-control" name="estado" id="id_estado">
													<option value="">Seleccione un Estado</option>
													<option value="1">Activo</option>
													<option value="0">Inactivo</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="imagen" class="col-xl-2 col-sm-2 col-form-label">Imagen</label>
											<div class="col-xl-10 col-sm-10">
												<input type="file" class="">
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-12">
												<div class="float-right">
													<input type="reset" class="btn btn-success" id="id_limpiar"
														value="Limpiar">
													<button type="button" class="btn btn-primary "
														id="id_registrar">Registrar</button>
												</div>

											</div>
										</div>
									</form>
								</div>
							</div>

						</div>

					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<jsp:include page="footer.jsp"></jsp:include>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Mensaje de Registro Producto Modal-->
	<div class="modal fade" id="msgProductoModal" tabindex="-1"
		role="dialog" aria-labelledby="msgProductoLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4e73df;">
					<h5 class="modal-title" id="msgProductoLabel" style="color: white;">Registro
						Producto</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Registro de Producto resultado</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Aceptar</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="js/bootstrapValidator.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/datatables-demo.js"></script>

	<script src="js/general/general.js"></script>

	<script type="text/javascript">
  
	//Listar Categoria
	$.getJSON("listarCategoria", {}, function(data){
		$.each(data, function(i,item){
			$("#id_categoria").append("<option value="+item.idCategoria +">"+ item.descripcion +"</option>");
		});
	});

 
   //Registrar Producto
	 $("#id_registrar").click(function(){
			var validator = $('#id_form_registrar').data('bootstrapValidator');
		    validator.validate();
		    //validarForm()
			
		    if (validator.isValid()) {
		        $.ajax({
		          type: "POST",
		          url: "registraProducto", 
		          data: $('#id_form_registrar').serialize(),
		          success: function(data){
		        	  //mostrarMensaje(data.MENSAJE);
		        	  limpiar();
		        	  validator.resetForm();
		          },
		          error: function(){
		        	  mostrarMensaje(MSG_ERROR);
		          }
		        });
		        
		    }
		});
  
	 function limpiar(){
			$('#id_nombre').val('');
			$('#id_descripcion').val('');
			$('#id_stock').val('');
			$('#id_precio').val('');
			$('#id_categoria').val(' ');
			$('#id_estado').val(' ');
		}
	 
	 </script>


<script type="text/javascript">
	$('#id_form_registrar').bootstrapValidator({
	    message: 'Este valor no es valido',
	    feedbackIcons: {
	        valid: 'glyphicon glyphicon-ok',
	        invalid: 'glyphicon glyphicon-remove',
	        validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	    	"nomProd": {
	    		selector : '#id_nombre',
	            validators: {
	                notEmpty: {
	                    message: 'El nombre es un campo obligatorio!'
	                },
	                stringLength :{
	                	message:'El nombre es de 15 a 300 caracteres',
	                	min : 3,
	                	max : 50
	                }
	            }
	        },
		    "descripcion": {
				selector : '#id_descripcion',
		        validators: {
		            notEmpty: {
		                message: 'La descripcion es un campo obligatorio!'
		            },
		            stringLength :{
		            	message:'La descripcion es de 15 a 900 caracteres',
		            	min : 3,
		            	max : 50
		            }
		        }
		    },
	        "stock": {
	    		selector : '#id_stock',
	            validators: {
	                notEmpty: {
	                    message: 'El stock es un campo obligatorio!'
	                }
	            }
	        },
	        "precio": {
	    		selector : '#id_precio',
	            validators: {
	            	notEmpty: {
	                    message: 'El precio es un campo obligatorio!'
	                }
	            }
	        },
	        "categoria.descripcion": {
	    		selector : '#id_categoria',
	            validators: {
	            	notEmpty: {
	                    message: 'Debes seleccionar una Categoria de Producto!'
	                }
	            }
	        },       
	        "estado": {
	    		selector : '#id_estado',
	            validators: {
	            	notEmpty: {
	                    message: 'Debes seleccionar un estado!'
	                }
	            }
	        }
	    	
	    }   
	});
	
	</script> 

</body>
</html>
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
											<label for="imagen" class="col-xl-2 col-sm-2 col-form-label">Imagen</label>
											<div class="col-xl-10 col-sm-10">
												<input type="file" id="imgProd" name="imgProd" class="">
												<input type="hidden" id="urlImg" name="urlImg">
												<img src="" id="imgPrevisualizacion" class="img-thumbnail" alt="No imagen" width="30%">
																							
											</div>
										</div>
										<div class="form-group row">
											<label for="stock" class="col-xl-2 col-sm-2 col-form-label">Stock</label>
											<div class="col-xl-4 col-sm-5">
												<input type="number" min="0" class="form-control"
													id="id_stock" name="stock" placeholder="0" title="entro">
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
											<input type="hidden" name="estado" value="1">
											<!--  
											<label for="estado" class="col-xl-2 col-sm-2 col-form-label">Estado</label>
											<div class="col-xl-4 col-sm-5">
												<select class="form-control" name="estado" id="id_estado">
													<option value=" ">Seleccione un Estado</option>
													<option value="1">Activo</option>
													<option value="0">Inactivo</option>
												</select>
											</div>
											-->
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
				<div class="modal-body" id="mensajeRegistroRes">Registro de Producto resultado</div>
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
	
	<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>

	<script src="https://www.gstatic.com/firebasejs/8.6.2/firebase-storage.js"></script>
	
	<script type="text/javascript">
  	
	$(document).ready(function(){
		cambiarLinkSidebar("#nav-usu", "#collapseUsuario","#nav-prod", "#collapseProducto", 1);			
  	});
	
	//Listar Categoria
	$.getJSON("listarCategoria", {}, function(data){
		$.each(data, function(i,item){
			$("#id_categoria").append("<option value="+item.idCategoria +">"+ item.descripcion +"</option>");
		});
	});

 
   
  
	 function limpiar(){
			$('#id_nombre').val('');
			$('#id_descripcion').val('');
			$('#id_stock').val('');
			$('#id_precio').val('');
			$('#id_categoria').val(' ');
			$('#id_estado').val(' ');
			$('#imgPrevisualizacion').attr('src',' ');
	}
	 
	 $('#id_limpiar').click(function(){
		 var validator = $('#id_form_registrar').data('bootstrapValidator');
		 validator.resetForm();
		 $('#imgPrevisualizacion').attr('src',' ');
	 });
	 
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
	                	message:'El nombre es de 3 a 300 caracteres',
	                	min : 3,
	                	max : 900
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
		            	message:'La descripcion es de 3 a 900 caracteres',
		            	min : 3,
		            	max : 900
		            }
		        }
		    },
		    "imgProd": {
	    		selector : '#imgProd',
	            validators: {
	                notEmpty: {
	                    message: 'Eliga una imagen'
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

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<script>

	$(document).ready(function(){
		mostrarImg();
	});
	
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAMYGSWddvLr6JfM_rLXIbYhfK9xSpHhBQ",
    authDomain: "proyectointegrador2021-bb331.firebaseapp.com",
    projectId: "proyectointegrador2021-bb331",
    storageBucket: "proyectointegrador2021-bb331.appspot.com",
    messagingSenderId: "250568325741",
    appId: "1:250568325741:web:50ca1a94df7b9a16e59d64"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  
  function mostrarImg(){
	  console.log("dfads");
	  	const $seleccionArchivos = document.querySelector("#imgProd");
	    const $imagenPrevisualizacion = document.querySelector("#imgPrevisualizacion");
	    console.log("entro");
	    $seleccionArchivos.addEventListener("change", () => {
		    const archivos = $seleccionArchivos.files;
		    if (!archivos || !archivos.length) {
		      $imagenPrevisualizacion.src = "";		     
		      return;
		    }
		    const primerArchivo = archivos[0];
		    const objectURL = URL.createObjectURL(primerArchivo);
		    $imagenPrevisualizacion.src = objectURL;
		    
	    })
  }
  
  
//Registrar Producto
	$("#id_registrar").click(function(){
		var validator = $('#id_form_registrar').data('bootstrapValidator');
		validator.validate();
		
		if (validator.isValid()) {
		
			var storage = firebase.storage();
			var file = ($('#imgProd'))[0].files[0];
				  
			var file2 = $("#imgProd").val();
			var extension = file2.split(".").pop().toLowerCase();
			      
			if(extension == "jpg" || extension == "png" || extension == "jpeg"){
				var storageRef = storage.ref('productos/img/'+file.name);
				var uploadTask = storageRef.put(file);
		
				uploadTask.on('state_changed',function(snapshot){
		
				},function(error){
					console.log(error);
				},function(){
					document.getElementById("imgProd").value = "";
				    uploadTask.snapshot.ref.getDownloadURL().then(function(downloadURL) {
				    console.log('File available at', downloadURL); 
				    $("#urlImg").val(downloadURL);
				    console.log("entro");
				    
				    registrarProducto(validator);
				    
				 	});
				});
			}else{
				                       
			}  
		}
	});
	
	function registrarProducto(validator){
		$.ajax({
	    	type: "POST",
	      	url: "registraProducto", 
	      	data: $('#id_form_registrar').serialize(),
	      	success: function(data){
	      		$("#mensajeRegistroRes").text(data.MENSAJE);
	      		$("#msgProductoModal").modal("show");
	      		limpiar();
	      		validator.resetForm();
	      	},
	      	error: function(){
	      		$("#mensajeRegistroRes").text("Error al Registrar Producto");
	      		$("#msgProductoModal").modal("show");
	      	}
	    });		      		       
	      
	}
  
</script>

</body>
</html>
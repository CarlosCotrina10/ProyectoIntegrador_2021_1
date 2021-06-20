<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Listado Producto</title>
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
									<h6 class="m-0 font-weight-bold text-primary">Listado de
										Productos</h6>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="tableGeneral"
											width="100%" cellspacing="0">
											<thead class="thead-dark">
												<tr>
													<th >N°</th>
													<th>Producto</th>
													<th>Descripción</th>
													<th>Stock</th>
													<th >Precio</th>
													<th>Categoria</th>
													<th>Estado</th>
													<th>Opciones</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
										</table>
									</div>
									<hr>
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

	<!-- modal actualizar Producto-->
	<div class="modal fade " id="modalActualizarProducto" tabindex="-1"
		role="dialog" aria-labelledby="modalProducto" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<form class="" id="id_form_actualiza" accept-charset="UTF-8"
					action="registraActualizaCrudProducto" method="post">
					<div class="modal-header" style="background-color: #4e73df;">
						<h5 class="modal-title" id="modalProducto" style="color: white;">Actualizar
							Producto</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group row">
							<label for="idProd" class="col-xl-2 col-sm-2 col-form-label">ID</label>
							<div class="col-xl-4 col-sm-4">
								<input type="text" class="form-control" id="id_idProd"
									name="idProd" readonly="readonly">
							</div>
						</div>
						<div class="form-group row">
							<label for="nomProd" class="col-xl-2 col-sm-2 col-form-label">Nombre</label>
							<div class="col-xl-10 col-sm-10">
								<input type="text" class="form-control" id="id_nombre"
									name="nomProd" placeholder="Ingrese nombre del producto">
							</div>
						</div>
						<div class="form-group row">
							<label for="descripcion" class="col-xl-2 col-sm-2 col-form-label">Descripción</label>
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
								<input type="number" min="0" class="form-control" id="id_stock"
									name="stock" placeholder="0">
							</div>
							<label for="precio" class="col-xl-2 col-sm-2 col-form-label">Precio</label>
							<div class="col-xl-4 col-sm-5">
								<input type="number" min="0" step="0.1" class="form-control"
									id="id_precio" name="precio" placeholder="0.0">
							</div>
						</div>
						<div class="form-group row">
							<label for="categoria" class="col-xl-2 col-sm-2 col-form-label">Categorias</label>
							<div class="col-xl-4 col-sm-5">
								<select class="form-control" name="categoria" id="id_categoria">
									<option value=" ">Seleccione una categoria</option>
								</select>
							</div>
							<input type="hidden" name="estado" value="1">
							<!--  
							<label for="estado" class="col-xl-2 col-sm-2 col-form-label">Estado</label>
							<div class="col-xl-4 col-sm-5">
								<select class="form-control" name="estado" id="id_estado">
									<option value="">Seleccione un Estado</option>
									<option value="1">Activo</option>
									<option value="0">Inactivo</option>
								</select>
							</div>
							-->
						</div>						
					</div>
					<div class="modal-footer">
						<button class="btn btn-primary" type="button"
							id="actualizarProducto">Actualizar</button>
						<button class="btn btn-secondary" type="button" id="id_ActCancelar"
							data-dismiss="modal">Cancelar</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Eliminar Producto Modal-->
	<div class="modal fade" id="eliminarProductoModal" tabindex="-1"
		role="dialog" aria-labelledby="eliminarProductoLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4e73df;">
					<h5 class="modal-title" id="eliminarProductoLabel"
						style="color: white;">Eliminar Producto</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">¿Esta seguro que desea eliminar el
					Producto?</div>
				<input type="hidden" id="id_codEliminar">
				<div class="modal-footer">
					<button id="eliminarProducto" type="button" class="btn btn-primary">Eliminar</button>
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Mensaje de Actualizacion Producto Modal-->
	<div class="modal fade" id="msgProductoModal" tabindex="-1"
		role="dialog" aria-labelledby="msgProductoLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4e73df;">
					<h5 class="modal-title" id="msgProductoLabel" style="color: white;">Actualización
						Producto</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Actualización de Producto resultado</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Aceptar</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Mensaje Resulatdo Modal-->
	<div class="modal fade" id="msgSalidaModal" tabindex="-1"
		role="dialog" aria-labelledby="msgSalidaLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4e73df;">
					<h5 class="modal-title" id="msgSalidaLabel" style="color: white;">Mensaje</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" id="msgSalida">Salida</div>
				<div class="modal-footer">
					<button class="btn btn-primary" type="button"
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

	<script>
		$(document).ready(
				function() {
					cambiarLinkSidebar("#nav-usu", "#collapseUsuario",
							"#nav-prod", "#collapseProducto", 3);
				});
	</script>


	<script type="text/javascript">
		//Listar Categoria
		$.getJSON("listarCategoria", {}, function(data) {
			$.each(data, function(i, item) {
				$("#id_categoria").append(
						"<option value="+item.idCategoria +">"
								+ item.descripcion + "</option>");
			});
		});

		$(document).ready(function() {
			$.getJSON("listarProducto", {}, function(lista) {
				agregarGrilla(lista);
			});
		});

		function agregarGrilla(lista) {
			$('#tableGeneral').DataTable().clear();
			$('#tableGeneral').DataTable().destroy();
			$('#tableGeneral')
					.DataTable(
							{
								data : lista,
								searching : false,
								ordering : true,
								processing : false,
								pageLength : 5,
								lengthChange : false,
								columns : [
										{
											data : "idProd"
										},
										{
											data : "nomProd"
										},
										{
											data : "descripcion"
										},
										{
											data : "stock"
										},
										{
											data : "precio"
										},
										{
											data : "categoria.descripcion"
										},
										{
											data : "estado"
										},
										{
											data : function(row, type, val,
													meta) {
												var salida = '<a href="#" data-target="#modalActualizarProducto" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mx-1" '
														+ 'onClick="modificar(\''
														+ row.idProd
														+ '\',\''
														+ row.nomProd
														+ '\',\''
														+ row.descripcion
														+ '\',\''
														+ row.stock
														+ '\',\''
														+ row.precio
														+ '\',\''
														+ row.categoria.idCategoria
														+ '\',\''
														+ row.estado
														+ '\',\''
														+ row.urlImg
														+ '\')" ><i class="fas fa-pen-square fa-sm text-white-50"></i></a> '
														+ '<a href="#" data-target="#eliminarProductoModal" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm mx-1" '
														+ 'onclick="eliminar(\''
														+ row.idProd
														+ '\')" ><i class="fas fa-trash-alt fa-sm text-white-50"></i></a>';
												return salida;
											},
											className : 'text-center'
										} ]

							});
		}

		function modificar(idProd, nomProd, descripcion, stock, precio,
				idCategoria, estado,urlImg) {
			$('#id_idProd').val(idProd);
			$('#id_nombre').val(nomProd);
			$('#id_descripcion').val(descripcion);
			$('#id_stock').val(stock);
			$('#id_precio').val(precio);
			$('#id_categoria').val(idCategoria);
			/*$('#id_estado').val(estado);urlImg*/
			$('#urlImg').val(urlImg);
			$('#imgPrevisualizacion').attr('src',urlImg);
		}

		function eliminar(idpro) {
			$("#id_codEliminar").val(idpro);
		}
		
		$("#eliminarProducto").click(function(){
			var idProd = $("#id_codEliminar").val();
			$.ajax({
				type : "POST",
				url : "eliminarProducto",
				data : {"idpro": idProd},
				success : function(data) {
					agregarGrilla(data.lista);
					$("#eliminarProductoModal").modal("hide");
					mostraMensaje(data.MENSAJE);				
				},
				error : function() {
					
				}
			});
		});		
		
		$("#id_ActCancelar").click(function(){
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.resetForm();
		});
		
		$("#modalActualizarProducto").click(function(){
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.resetForm();
		});
		
		function mostraMensaje(msg){
			$("#msgSalida").text(msg);
			$("#msgSalidaModal").modal("show");	
		}
	</script>


	<script type="text/javascript">
		$('#id_form_actualiza')
				.bootstrapValidator(
						{
							message : 'Este valor no es valido',
							feedbackIcons : {
								valid : 'glyphicon glyphicon-ok',
								invalid : 'glyphicon glyphicon-remove',
								validating : 'glyphicon glyphicon-refresh'
							},
							fields : {
								"nomProd" : {
									selector : '#id_nombre',
									validators : {
										notEmpty : {
											message : 'El nombre es un campo obligatorio!'
										},
										stringLength : {
											message : 'El nombre es de 15 a 300 caracteres',
											min : 3,
											max : 900
										}
									}
								},
								"descripcion" : {
									selector : '#id_descripcion',
									validators : {
										notEmpty : {
											message : 'La descripcion es un campo obligatorio!'
										},
										stringLength : {
											message : 'La descripcion es de 15 a 900 caracteres',
											min : 3,
											max : 900
										}
									}
								},
								"stock" : {
									selector : '#id_stock',
									validators : {
										notEmpty : {
											message : 'El stock es un campo obligatorio!'
										}
									}
								},
								"precio" : {
									selector : '#id_precio',
									validators : {
										notEmpty : {
											message : 'El precio es un campo obligatorio!'
										}
									}
								},
								"categoria.descripcion" : {
									selector : '#id_categoria',
									validators : {
										notEmpty : {
											message : 'Debes seleccionar una Categoria de Producto!'
										}
									}
								},
								"estado" : {
									selector : '#id_estado',
									validators : {
										notEmpty : {
											message : 'Debes seleccionar un estado!'
										}
									}
								}

							}
						});
	</script>
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
	  	const $seleccionArchivos = document.querySelector("#imgProd");
	    const $imagenPrevisualizacion = document.querySelector("#imgPrevisualizacion");
	    
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
	$("#actualizarProducto").click(function(){
		
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
		validator.validate();
		
		if($("#imgProd").val() == ""){
			actualizarProducto(validator);
		}		
		else if(validator.isValid()) {
			
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
				    actualizarProducto(validator);
				 	});
				});
			}else{
				         
			}  
		}
	});
	
	function actualizarProducto(validator){
		$.ajax({
			type : "POST",
			url : "modificarProducto",
			data : $('#id_form_actualiza').serialize(),
			success : function(data) {
				agregarGrilla(data.lista);
				$("#modalActualizarProducto").modal("hide");
				console.log("entro3");
				mostraMensaje(data.MENSAJE);
				validator.resetForm();
			},
			error : function() {
				mostrarMensaje(MSG_ERROR);
			}
		});		       	      
	}
  
</script>
</body>
</html>
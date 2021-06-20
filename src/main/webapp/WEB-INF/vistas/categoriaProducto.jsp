<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Categoria Producto</title>
<!-- Custom fonts for this template-->
<link href="css/bootstrapValidator.css" rel="stylesheet" type="text/css">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
	
<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<style>
	.help-block{
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

            <div class="col-xl-6 col-lg-6">

              <!-- Area Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Categoria de Producto</h6>
                </div>
                <div class="card-body">
                  	<form action="" id="form-regCategoria">
						<div class="form-group row">
							<label for="descripcion" class="col-sm-3 col-form-label">Descripcion</label>
							<div class="col-sm-9">
							  <input type="text" class="form-control" id="descripcion" name="descripcion" value="">
							</div>
						</div>
						<div class="form-group row">							
							<div class="col-sm-12">
							  <button type="button" class="btn btn-primary float-right" id="id_btnRegCategoria">Guardar</button>
							</div>
						</div>
					</form>
                  <hr>
                </div>
              </div>

            </div>

            <!-- Donut Chart -->
            <div class="col-xl-6 col-lg-6">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Lista de Categorias</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  	<div class="table-responsive">
						<table class="table table-bordered" id="tableCategoria" width="100%" cellspacing="0">
							<thead class="thead-dark">
								<tr>
								  <th>N°</th>
								  <th>Categoria</th>
								  <th>Opciones</th>
								</tr>
						  	</thead>
							<tbody>
                                <!-- esto se elimina -->
								<tr>
									<td>1</td>
									<td>Laptos</td>
									<td class="d-sm-flex align-items-center justify-content-center"><a href="#" data-target="#eliminarCategoriaModal" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm"><i class="fas fa-trash-alt fa-sm text-white-50"></i></a></td>
								</tr>
                                <!-- end  esto se elimina -->
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
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
	
  <!-- Eliminar Categoria Modal-->
  <div class="modal fade" id="eliminarCategoriaModal" tabindex="-1" role="dialog" aria-labelledby="eliminarCategoriaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #4e73df;">
          <h5 class="modal-title" id="eliminarCategoriaLabel" style="color: white;">Eliminar Categoría</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <input type="hidden" id="id_codEliminar" value="">
        <div class="modal-body">¿Esta seguro que desea eliminar esta Categoría?</div>
        <div class="modal-footer">
          <button id="eliminarCategoria" type="button" class="btn btn-primary">Eliminar</button>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>          
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="msgSalidaCategoriaModal" tabindex="-1" role="dialog" aria-labelledby="msgSalidaCategoriaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #4e73df;">
          <h5 class="modal-title" id="msgSalidaCategoriaLabel" style="color: white;">Mensaje</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body" id="msgSalidaCategoria"></div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Aceptar</button>          
        </div>
      </div>
    </div>
  </div>

  <!-- Mensaje de Registro Categoria Modal-->
  <div class="modal fade" id="msgCategoriaModal" tabindex="-1" role="dialog" aria-labelledby="msgCategoriaLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #4e73df;">
          <h5 class="modal-title" id="msgCategoriaLabel" style="color: white;">Registro Categoría</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body" id="msgSalidaRegCat">Registro de Categoría resultado</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Aceptar</button>          
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
  
  <script>
  	$(document).ready(function(){
  		cambiarLinkSidebar("#nav-usu","#collapseUsuario","#nav-prod","#collapseProducto",2);
  	});
	
  	$(document).ready(function() {
		$.getJSON("listarCategoria", {}, function(lista) {
			agregarGrilla(lista);
		});
	});
  	
  	$('#form-regCategoria').bootstrapValidator({
		message : 'Este valor no es valido',
		feedbackIcons : {
			valid : 'glyphicon glyphicon-ok',
			invalid : 'glyphicon glyphicon-remove',
			validating : 'glyphicon glyphicon-refresh'
		},
		fields : {					
			"descripcion" : {
				selector : '#descripcion',
				validators : {
					notEmpty : {
					message : 'La descripcion es un campo obligatorio!'
					},
					stringLength : {
						message : 'La descripcion es de 3 a 45 caracteres',
						min : 3,
						max : 45
					}
				}
			}
		}
	});
  	
  	
  	function agregarGrilla(lista){
		$('#tableCategoria').DataTable().clear();
		$('#tableCategoria').DataTable().destroy();
		$('#tableCategoria').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: false,
			pageLength: 5,
			lengthChange: false,
			columns:[
				{data: "idCategoria"},
				{data: "descripcion"},
				{data: function(row, type, val, meta){
					var salida ='<a href="#" data-target="#eliminarCategoriaModal" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm mx-1" ' +
					'onclick="eliminar(\'' + row.idCategoria + '\')" ><i class="fas fa-trash-alt fa-sm text-white-50"></i></a>';
					return salida;
				}, className:'text-center'}
			]
			
		});
	}
  	
  	function mostraMensaje(msg){
		$("#msgSalidaRegCat").text(msg);
		$("#msgCategoriaModal").modal("show");	
	}
  	
  	function limpiar(){
  		$('#descripcion').val('');
  	}
  	
  	$("#id_btnRegCategoria").click(function(){
		var validator = $('#form-regCategoria').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "registraCategoria", 
	          data: $('#form-regCategoria').serialize(),
	          success: function(data){
	        	  agregarGrilla(data.lista);
				  mostraMensaje(data.MENSAJE);
				  limpiar();
				  validator.resetForm();
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	        });
	        
	    }
	});
  	
  	function mostraMensajeEliminar(msg){
		$("#msgSalidaCategoria").text(msg);
		$("#msgSalidaCategoriaModal").modal("show");	
	}
  	
  	function eliminar(idpro) {
		$("#id_codEliminar").val(idpro);
	}
  	
  	$("#eliminarCategoria").click(function(){
		var id = $("#id_codEliminar").val();
		$.ajax({
			type : "POST",
			url : "eliminarCategoria",
			data : {"id": id},
			success : function(data) {
				agregarGrilla(data.lista);
				$("#eliminarCategoriaModal").modal("hide");
				mostraMensajeEliminar(data.MENSAJE);				
			},
			error : function() {
				
			}
		});
	});		
  	
  </script>
  
</body>
</html>
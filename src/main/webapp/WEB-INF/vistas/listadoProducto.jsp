<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Listado Producto</title>
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

            <div class="col-xl-12 col-lg-12">

              <!-- Area Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Listado de Productos</h6>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
						<table class="table table-bordered" id="tableGeneral" width="100%" cellspacing="0">
							<thead class="thead-dark">
								<tr>
								  	<th>N�</th>
								  	<th>Producto</th>
								  	<th>Descripci�n</th>
									<th>Stock</th>
                                    <th>Precio</th>
                                    <th>Categoria</th>
									<th>Opciones</th>
								</tr>
						  	</thead>
							<tbody>
                                <!-- est se elimina -->
								<tr>
									<td>1</td>
									<td>Laptop HP 240 G7, 14" HD, Intel Celeron N4100 1.10 GHz, 4GB DDR4, 1TB SATA.</td>
									<td>Laptop HP 240 G7, 14" HD, Intel Celeron N4100 1.10 GHz, 4GB DDR4, 1TB SATA. Video Intel UHD Graphics 600, Intel Wireless LAN 802.11ac, Bluetooth, C�mara Web.</td>
                                    <td class="text-right">20</td>
									<td class="text-right"><strong><span class="text-danger">S/. </span></strong>30</td>
                                    <td>Laptop</td>
									<td class="d-sm-flex align-items-center justify-content-center">
										<a href="#" data-target="#modalActualizarProducto" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mx-1"><i class="fas fa-pen-square fa-sm text-white-50"></i></a>
										<a href="#" data-target="#eliminarProductoModal" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm mx-1"><i class="fas fa-trash-alt fa-sm text-white-50"></i></a>
									</td>
								</tr>
                                <!-- end esto se elimina -->
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
	
 <!-- modal actualizar Producto-->
 <div class="modal fade " id="modalActualizarProducto" tabindex="-1" role="dialog" aria-labelledby="modalProducto" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
     <form class="">
      <div class="modal-header" style="background-color: #4e73df;">
        <h5 class="modal-title" id="modalProducto" style="color: white;">Actualizar Producto</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">�</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group row">
          <label for="nombre" class="col-xl-2 col-sm-2 col-form-label">Nombre</label>
          <div class="col-xl-10 col-sm-10">
            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese nombre del producto"> 
          </div>
        </div>
        <div class="form-group row">
          <label for="descripcion" class="col-xl-2 col-sm-2 col-form-label">Descripci�n</label>
          <div class="col-xl-10 col-sm-10">
              <textarea class="form-control" name="descripcion" id="descripcion" rows="5" placeholder="Ingrese descripci�n del producto"></textarea>
          </div>
        </div>
        <div class="form-group row">
          <label for="categoria" class="col-xl-2 col-sm-2 col-form-label">Imagen</label>
          <div class="col-xl-10 col-sm-10">
            <input type="file"  class="" >
          </div>
        </div>
        <div class="form-group row">
          <label for="categoria" class="col-xl-2 col-sm-2 col-form-label">Categorias</label>
          <div class="col-xl-4 col-sm-5">
              <select class="form-control" name="categoria" id="categoria">
              	<option value="">Seleccione una categoria</option>
              </select>
          </div>
          <label for="estado" class="col-xl-2 col-sm-2 col-form-label">Estado</label>
          <div class="col-xl-4 col-sm-5">
              <select class="form-control" name="estado" id="estado">
              	<option value="">Seleccione un Estado</option>
              </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="stock" class="col-xl-2 col-sm-2 col-form-label">Stock</label>
          <div class="col-xl-4 col-sm-5">
          	<input type="number" min="0" class="form-control" id="stock" name="stock" placeholder="0"> 
          </div>
          <label for="precio" class="col-xl-2 col-sm-2 col-form-label">Precio</label>
          <div class="col-xl-4 col-sm-5">
          	<input type="number" min="0" step="0.1" class="form-control" id="precio" name="precio" placeholder="0.0"> 
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" type="button">Actualizar</button>
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
      </div>
    </form> 
    </div>
  </div>
</div>

  <!-- Eliminar Producto Modal-->
  <div class="modal fade" id="eliminarProductoModal" tabindex="-1" role="dialog" aria-labelledby="eliminarProductoLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #4e73df;">
          <h5 class="modal-title" id="eliminarProductoLabel" style="color: white;">Eliminar Producto</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">�Esta seguro que desea eliminar el Producto?</div>
        <div class="modal-footer">
          <button id="eliminarProducto" type="button" class="btn btn-primary">Eliminar</button>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>          
        </div>
      </div>
    </div>
  </div>

  <!-- Mensaje de Actualizacion Producto Modal-->
  <div class="modal fade" id="msgProductoModal" tabindex="-1" role="dialog" aria-labelledby="msgProductoLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #4e73df;">
          <h5 class="modal-title" id="msgProductoLabel" style="color: white;">Actualizaci�n Producto</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Actualizaci�n de Producto resultado</div>
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
  		cambiarLinkSidebar("#nav-usu","#collapseUsuario","#nav-prod","#collapseProducto",3);
  	});
	
  </script>
  
</body>
</html>
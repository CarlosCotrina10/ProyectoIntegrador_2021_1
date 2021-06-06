<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Listado Usuario</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
	
<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
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
                  <h6 class="m-0 font-weight-bold text-primary">Listado de Usuarios</h6>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
						<table class="table table-bordered" id="tableGeneral" width="100%" cellspacing="0">
							<thead class="thead-dark">
								<tr>
								  	<th>N°</th>
								  	<th>Nombre</th>
								  	<th>Apellido</th>
									<th>Usuario</th>
                                    <th>Distrito</th>
                                    <th>Tipo</th>
									<th>Estado</th>
                                    <th>Opciones</th>
								</tr>
						  	</thead>
							<tbody>
                                <!-- est se elimina -->
								<tr>
									<td>1</td>
									<td>Nombre</td>
									<td>Apellido</td>
                                    <td>usuario</td>
									<td>Distrito</td>
                                    <td>Tipo</td>
                                    <td>Estado</td>
									<td class="d-sm-flex align-items-center justify-content-center">
										<a href="#" data-target="#modalActualizarUsuario" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mx-1"><i class="fas fa-pen-square fa-sm text-white-50"></i></a>
										<a href="#" data-target="#eliminarUsuarioModal" data-toggle="modal" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm mx-1"><i class="fas fa-trash-alt fa-sm text-white-50"></i></a>
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

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>
	
  <!-- modal actualizar Usuario-->
 <div class="modal fade " id="modalActualizarUsuario" tabindex="-1" role="dialog" aria-labelledby="modalUsuarioLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
     <form class="">
      <div class="modal-header" style="background-color: #4e73df;">
        <h5 class="modal-title" id="modalUsuarioLabel" style="color: white;">Actualizar Usuario</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group row">
          <label for="nombre" class="col-xl-2 col-sm-2 col-form-label">Nombre</label>
          <div class="col-xl-4 col-sm-4">
            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese nombre del Usuario"> 
          </div>
                        <label for="apellido" class="col-xl-2 col-sm-2 col-form-label">Apellido</label>
          <div class="col-xl-4 col-sm-4">
            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Ingrese el apellido del Usuario"> 
          </div>
        </div>
        <div class="form-group row">
          <label for="usuario" class="col-xl-2 col-sm-2 col-form-label">Usuario</label>
          <div class="col-xl-4 col-sm-4">
          <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Ingrese el usuario"> 
        </div>
            <label for="clave" class="col-xl-2 col-sm-2 col-form-label">Clave</label>
<div class="col-xl-4 col-sm-4">
<input type="password" class="form-control" id="clave" name="clave" placeholder="Ingrese la clave"> 
</div>
        </div>
        <div class="form-group row">
          <label for="tipo" class="col-xl-2 col-sm-2 col-form-label">Tipo</label>
          <div class="col-xl-4 col-sm-5">
              <select class="form-control" name="tipo" id="tipo">
                                <option value="">Seleccione un Tipo</option>
                                <option value="1">Administrador</option>
                                <option value="2">Cliente</option>
                            </select>
          </div>
<label for="estado" class="col-xl-2 col-sm-2 col-form-label">Estado</label>
<div class="col-xl-4 col-sm-5">
  <select class="form-control" name="estado" id="estado">
                    <option value="">Seleccione un Estado</option>
                </select>
</div>
        </div>        
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" type="button" id="actualizarUsuario">Actualizar</button>
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
      </div>
    </form> 
    </div>
  </div>
</div>

  <!-- Eliminar Producto Modal-->
  <div class="modal fade" id="eliminarUsuarioModal" tabindex="-1" role="dialog" aria-labelledby="eliminarUsuarioLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #4e73df;">
          <h5 class="modal-title" id="eliminarUsuarioLabel" style="color: white;">Eliminar Usuario</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">¿Esta seguro que desea eliminar el Usuario?</div>
        <div class="modal-footer">
          <button id="eliminarUsuario" type="button" class="btn btn-primary">Eliminar</button>
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>          
        </div>
      </div>
    </div>
  </div>

  <!-- Mensaje de Actualizacion Producto Modal-->
  <div class="modal fade" id="msgUsuarioModal" tabindex="-1" role="dialog" aria-labelledby="msgUsuarioLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #4e73df;">
          <h5 class="modal-title" id="msgUsuarioLabel" style="color: white;">Actualización Usuario</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Actualización de Usuario resultado</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Aceptar</button>          
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
	
  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
	
  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
</body>
</html>
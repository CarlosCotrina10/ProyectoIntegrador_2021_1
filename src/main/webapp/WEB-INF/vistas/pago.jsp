<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Pagina Pago</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <jsp:include page="topBar.jsp"/>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid" style="min-height: 400px;">
            <div>  
                 <!-- Cuando el carrito tiene producto -->             
                <h2 class="text-gray-900"><strong>REALIZAR COMPRA</strong></h2>
                <form action="">
                    <div class="row">  
                        <div class="col-md-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                  <h5 class="text-gray-900"><strong>METODOS DE PAGO</strong></h5>
                                </div>
                                <div class="card-body">
                                    <div class="form-check">
                                        <input type="radio" name="tipoPago" class="form-check-input" id="tipoPagotarjeta">
                                        <label for="tipoPagotarjeta" class="form-check-label text-xs"><strong>PAGA SEGURO CON TARJETA DE CRÉDITO Y DÉBITO</strong></label>                                        
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="card mb-4 py-3">
                                                <div class="card-body">
                                                  <img src="https://peru.payu.com/wp-content/uploads/sites/13/2020/03/PE_Sol_logos_Visa_100x35.png" alt="" class="img-fluid"> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="card mb-4 py-3">
                                                <div class="card-body">
                                                  <img src="https://peru.payu.com/wp-content/uploads/sites/13/2020/03/PE_Sol_logos_MasterCard_100x35.png" alt="" class="img-fluid"> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="card mb-4 py-3">
                                                <div class="card-body">
                                                  <img src="https://peru.payu.com/wp-content/uploads/sites/13/2020/03/PE_Sol_logos_american_express_100x35.png" alt="" class="img-fluid"> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="card mb-4 py-3">
                                                <div class="card-body">
                                                  <img src="https://peru.payu.com/wp-content/uploads/sites/13/2020/03/PE_Sol_logos_pago-efectivo-1_100x35.png" alt="" class="img-fluid"> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-check">
                                        <input type="radio" name="tipoPago" class="form-check-input" id="tipoPagoEfectivo">
                                        <label for="tipoPagoEfectivo" class="form-check-label text-xs"><strong>SI NO TIENES TARJETA USA PAGOEFECTIVO</strong></label>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                  <h5 class="text-gray-900"><strong>REVISIÓN DEL PEDIDO</strong> </h5>
                                </div>
                                <div class="card-body">
                                    <table class="w-100 table text-xs">
                                        <thead class="text-gray-900">
                                            <tr class="row">
                                                <th class="col-md-4">Nombre del Producto</th>
                                                <th class="col-md-3">Precio</th>
                                                <th class="col-md-2">Cantidad</th>
                                                <th class="col-md-3">Subtotal</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- for -->
                                            <tr class="row">
                                                <td class="col-md-4">
                                                    <span>SMARTPHONE XIAOMI REDMI NOTE 8 COLOR LUZ DE LUNA, 4GB RAM, 64GB ALMACENAMIENTO</span>
                                                </td>
                                                <td class="col-md-3">
                                                    <span class="text-danger">S/.</span> 794.00
                                                </td>
                                                <td class="col-md-2">
                                                    <span>2</span>
                                                </td>
                                                <td class="col-md-3">
                                                    <span class="text-danger">S/.</span> 794.00
                                                </td>
                                            </tr>
                                            <tr class="row">
                                                <td class="col-md-4">
                                                    <span>SMARTPHONE XIAOMI REDMI NOTE 8 COLOR LUZ DE LUNA, 4GB RAM, 64GB ALMACENAMIENTO</span>
                                                </td>
                                                <td class="col-md-3">
                                                    <span class="text-danger">S/.</span> 794.00
                                                </td>
                                                <td class="col-md-2">
                                                    <span>2</span>
                                                </td>
                                                <td class="col-md-3">
                                                    <span class="text-danger">S/.</span> 794.00
                                                </td>
                                            </tr>
                                            <tr class="row">
                                                <td class="col-md-4">
                                                    <span>SMARTPHONE XIAOMI REDMI NOTE 8 COLOR LUZ DE LUNA, 4GB RAM, 64GB ALMACENAMIENTO</span>
                                                </td>
                                                <td class="col-md-3">
                                                    <span class="text-danger">S/.</span> 794.00
                                                </td>
                                                <td class="col-md-2">
                                                    <span>2</span>
                                                </td>
                                                <td class="col-md-3">
                                                    <span class="text-danger">S/.</span> 794.00
                                                </td>
                                            </tr>
                                             <!-- endfor -->
                                        </tbody>
                                    </table>
                                </div>
                                
                            </div>
                            <div>
                                <button class="btn btn-lg btn-primary w-100" >
                                   <!-- <span class="spinner-border spinner-border-sm mr-2"></span>-->
                                    REALIZAR PAGO</button>
                            </div>
                        </div>
                    </div>
                </form> 
                <!-- Cuando el carrito este vacio -->
                <!-- 
                <div class="text-center" style="margin-top: 160px;">
                    <h4><strong><span class="text-danger">TU CARRITO ESTA VACIO </span>¡AGREGA TUS PRODUCTOS Y DISFRUTA DE NUESTROS BAJOS PRECIOS!</strong></h4>
                </div>
                -->
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

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  
  <script src="js/bootstrapValidator.js" type="text/javascript"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</body>
</html>
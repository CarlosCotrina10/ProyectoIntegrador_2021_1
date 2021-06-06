<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<title>Carrito</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
</head>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
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
						<h1>CARRITO DE COMPRAS</h1>
						<div>
							<br>
							<table class="w-100 table">
								<thead>
									<tr class="row">
										<th class="col-md-1"></th>
										<th class="col-md-7">Título</th>
										<th class="col-md-1">Precio unitario</th>
										<th class="col-md-1">Cantidad</th>
										<th class="col-md-1">Subtotal</th>
										<th class="col-md-1"></th>
									</tr>
								</thead>
								<tbody>
									<!-- aqui va un for -->
									<tr class="row">
										<td class="col-md-1"><a href="/detalle"><img
												src="img/img1.jpg" alt="" class="img-fluid"></a></td>
										<td class="col-md-7"><a href="/detalle"
											class="text-decoration-none">SMARTPHONE XIAOMI REDMI NOTE
												8 COLOR LUZ DE LUNA, 4GB RAM, 64GB ALMACENAMIENTO</a></td>
										<td class="col-md-1"><span class="text-danger">S/.</span>
											794.00</td>
										<td class="col-md-1"><input type="number" disabled
											class="form-control" value="1"></td>
										<td class="col-md-1"><span class="text-danger">S/.</span>
											794.00</td>
										<td class="col-md-1"><a class="" href="#" role="button">
												<i class="fas fa-trash-alt fa-fw" style="width: 100%;"></i>
										</a></td>
									</tr>
									<tr class="row">
										<td class="col-md-1"><a href="/detalle"><img
												src="img/img1.jpg" alt="" class="img-fluid"></a></td>
										<td class="col-md-7"><a href="/detalle"
											class="text-decoration-none">SMARTPHONE XIAOMI REDMI NOTE
												8 COLOR LUZ DE LUNA, 4GB RAM, 64GB ALMACENAMIENTO</a></td>
										<td class="col-md-1"><span class="text-danger">S/.</span>
											794.00</td>
										<td class="col-md-1"><input type="number" disabled
											class="form-control" value="1"></td>
										<td class="col-md-1"><span class="text-danger">S/.</span>
											794.00</td>
										<td class="col-md-1"><a class="" href="#" role="button">
												<i class="fas fa-trash-alt fa-fw" style="width: 100%;"></i>
										</a></td>
									</tr>
									<!-- end for -->
								</tbody>
								<tfoot>
									<tr class="row">
										<td class="col-md-8"></td>
										<td class="col-md-3 text-right">
											<div>SubTotal S/.50.00</div>
											<div class="text-danger">
												<strong>Total a Pagar S/. 80.00</strong>
											</div>
											<div class="my-4">
												<button class="btn btn-lg btn-primary w-100">COMPRAR</button>
											</div>
										</td>
										<td class="col-md-1"></td>
									</tr>
								</tfoot>
							</table>
						</div>
						<!-- Cuando el carrito este vacio -->
						<!-- 
                <div class="text-center" style="margin-top: 160px;">
                    <h4><strong><span class="text-danger">TU CARRITO ESTA VACIO </span>ï¿½AGREGA TUS PRODUCTOS Y DISFRUTA DE NUESTROS BAJOS PRECIOS!</strong></h4>
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
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>
</body>
</html>
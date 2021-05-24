<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Detalle Producto</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
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
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-6 p-5">
							<div class="card mb-4">
								<div class="card-body">
									<img src="https://d2ulnfq8we0v3.cloudfront.net/cdn/296932/media/catalog/product/cache/1/image/1200x/040ec09b1e35df139433887a97daa66f/9/6/969997a0e5da249e4040fb63bd7229ce_4.jpg" class="d-block w-100" alt="">
								</div>
							</div>
						</div>
						<div class="col-md-6 p-5">
<<<<<<< HEAD
							<h1>${prod.nomProd }</h1>
							<div>${prod.descripcion }</div>
=======
							<h1>Laptop ASUS 14" IPS LED FHD Core i5-1135G7 2.4 / 4.2GHz,
								8GB DDR4, 512GB SSD M.2 NVMe</h1>
							<div>Laptop ASUS 14" IPS LED FHD Core i5-1135G7 2.4 / 4.2GHz, 8GB DDR4, 512GB SSD M.2 NVMe Video Intel Iris X Graphics, Intel Wi-Fi 6 (802.11ax) + Bluetooth 5.0 (Dual band) 2x2, Camara Web HD</div>
>>>>>>> branch 'main' of https://github.com/CarlosCotrina10/ProyectoIntegrador_2021_1.git
							<div class="my-5">
								<span class="text-lg text-danger"><strong>S/.${prod.precio }</strong></span>
							</div>
							<form action="/carrito">
								<div class="col-md-2 p-0 mb-3">
									<input class="form-control" type="number" value="1" min="1"
										step="1">
								</div>
								<div>
									<input class="btn btn-block btn-success btn-lg" type="submit"
										value="AGREGAR AL CARRITO">
								</div>
							</form>
						</div>

					</div>


				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Tienda</span>
					</div>
				</div>
			</footer>
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
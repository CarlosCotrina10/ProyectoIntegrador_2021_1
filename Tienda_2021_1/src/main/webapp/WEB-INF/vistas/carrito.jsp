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
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					<div class="">
						<a href="/index" class="text-decoration-none"> <span
							class="h3 ml-5">Tienda</span>
						</a>
					</div>
					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Carrito -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link" href="/carrito" id="carrito"> <i
								class="fas fa-shopping-cart fa-fw"></i> <!-- Icon -- Carrito -->
								<span class="badge badge-danger badge-counter">7</span>
						</a></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Usuario</span>
								<img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
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
                    <h4><strong><span class="text-danger">TU CARRITO ESTA VACIO </span>¡AGREGA TUS PRODUCTOS Y DISFRUTA DE NUESTROS BAJOS PRECIOS!</strong></h4>
                </div>
                -->
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

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="/login">Logout</a>
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

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>
</body>
</html>
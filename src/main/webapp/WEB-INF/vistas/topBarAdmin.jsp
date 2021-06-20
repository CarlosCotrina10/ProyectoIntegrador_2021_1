<jsp:include page="validacionUsuarioLogin.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Top Bar Sidebar</title>
</head>
<body>

	<nav
		class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

		<!-- Sidebar Toggle (Topbar) -->
		<button id="sidebarToggleTop"
			class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>

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
							<input type="text" class="form-control bg-light border-0 small"
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

			<!-- Nav Item - Alerts -->
			<li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
					<span class="badge badge-danger badge-counter">3+</span>
			</a> <!-- Dropdown - Alerts -->
				<div
					class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
					aria-labelledby="alertsDropdown">
					<h6 class="dropdown-header">Alertas</h6>
					<a class="dropdown-item d-flex align-items-center" href="#">
						<div class="mr-3">
							<div class="icon-circle bg-primary">
								<i class="fas fa-file-alt text-white"></i>
							</div>
						</div>
						<div>
							<div class="small text-gray-500">Junio 10, 2021</div>
							<span class="font-weight-bold">Un nuevo documento ha sido enviado a su correo!</span>
						</div>
					</a> <a class="dropdown-item d-flex align-items-center" href="#">
						<div class="mr-3">
							<div class="icon-circle bg-success">
								<i class="fas fa-donate text-white"></i>
							</div>
						</div>
						<div>
							<div class="small text-gray-500">Junio 10, 2021</div>
							$290.29 Ventas realizadas hasta ahora !
						</div>
					</a> <a class="dropdown-item d-flex align-items-center" href="#">
						<div class="mr-3">
							<div class="icon-circle bg-warning">
								<i class="fas fa-exclamation-triangle text-white"></i>
							</div>
						</div>
						<div>
							<div class="small text-gray-500">Junio 10, 2021</div>
							Alert: La cuenta de contraseña expirará pronto, cambielo.
						</div>
					</a> <a class="dropdown-item text-center small text-gray-500" href="#">Mostrar todas las alertas</a>
				</div></li>

			<div class="topbar-divider d-none d-sm-block"></div>
			
			
				<!-- Nav Item - User Information la logearse de los Admin-->
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span
						class="mr-2 d-none d-lg-inline text-gray-600 small">
							${sessionScope.objUsuarioAdmin.nombre} </span> <img
						class="img-profile rounded-circle"
						src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
				</a> <!-- Dropdown - User Information -->
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">
						<!--  Agregar despues
					<a class="dropdown-item" href="#"> <i
						class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
					</a> <a class="dropdown-item" href="#"> <i
						class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
					</a> <a class="dropdown-item" href="#"> <i
						class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
						Log
					</a>
					<div class="dropdown-divider"></div>-->
					<!--  data-toggle="modal" data-target="#logoutModal" -->
						<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> <i  
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							Cerrar Sesion
						</a>
					</div></li>

		</ul>

	</nav>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Cerrar Sesión</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Seleccione "Cerrar sesión" a
					continuación si está listo para finalizar su sesión actual.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary"  href="/logoutAdmin">Cerrar Session</a>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
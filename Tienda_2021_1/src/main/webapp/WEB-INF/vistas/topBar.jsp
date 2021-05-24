<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<title>TOP BAR</title>
</head>
<body>
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

			<!-- Carrito -->
			<li class="nav-item dropdown no-arrow mx-1"><a class="nav-link"
				href="/carrito" id="carrito"> <i
					class="fas fa-shopping-cart fa-fw"></i> <!-- Icon -- Carrito --> <span
					class="badge badge-danger badge-counter">7</span>
			</a></li>

			<div class="topbar-divider d-none d-sm-block"></div>

			<c:if test="${sessionScope.objUsuario != null}">
				<!-- Nav Item - User Information la logearse -->
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span
						class="mr-2 d-none d-lg-inline text-gray-600 small">
							${sessionScope.objUsuario.nombre} </span> <img
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
						<a class="dropdown-item" href="#" data-toggle="modal"
							data-target="#logoutModal"> <i
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							Cerrar Sesion
						</a>
					</div></li>
			</c:if>
			<c:if test="${sessionScope.objUsuario.nombre == null}">
				<!-- Nav Item - User Information sin logearse -->
				<li class="nav-item dropdown no-arrow">
				<a class="nav-link dropdown-toggle" href="/login" 
					role="button" > <span
						class="mr-2 d-none d-lg-inline text-gray-600 small">
							Iniciar Sesion </span> <img class="img-profile rounded-circle"
						src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
				</a> <!-- Dropdown - User Information -->
				</li>
			</c:if>

		</ul>

	</nav>
	<!-- End of Topbar -->

	<!-- Logout Modal-->
	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">¿Esta Seguro
						que desea Cerrar Sesion?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Seleccione "Cerrar sesión" a
					continuación si está listo para finalizar su sesión actual.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancelar</button>
					<a class="btn btn-primary" href="/logout">Cerrar Sesión</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
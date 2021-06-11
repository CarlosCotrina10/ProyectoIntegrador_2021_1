<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sidebar</title>
</head>
<body>
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">Admin</div>
		</a>
		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Mantener</div>

		<!-- Nav Item - Producto-->
		<li class="nav-item" id="nav-prod"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseProducto"
			aria-expanded="true" aria-controls="collapseProducto"> <i
				class="fas fa-fw fa-archive"></i> <span>Productos</span>
		</a>
			<div id="collapseProducto" class="collapse"
				aria-labelledby="headingProducto" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Opciones</h6>
					<a class="collapse-item" href="/verRegistroProducto">Registro Producto</a> <a
						class="collapse-item" href="/verCategoriaProducto">Categoria</a> <a
						class="collapse-item" href="/verListadoProducto">Gestor Producto</a>
				</div>
			</div></li>

		<!-- Nav Item - Usuario-->
		<li class="nav-item" id="nav-usu"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseUsuario"
			aria-expanded="true" aria-controls="collapseUsuario"> <i
				class="fas fa-fw fa-users"></i> <span>Usuarios</span>
		</a>
			<div id="collapseUsuario" class="collapse"
				aria-labelledby="headingUsuario" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Opciones</h6>
					<a class="collapse-item" href="/verRegistroUsuario" onclick="">Registro Usuario</a> <a
						class="collapse-item" href="/verListadoUsuario">Gestor Usuario</a>
				</div>
			</div></li>


		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>	
	
</body>
</html>
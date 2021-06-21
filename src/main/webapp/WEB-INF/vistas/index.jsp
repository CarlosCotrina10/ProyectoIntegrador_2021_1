<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Pagina Principal</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<style>
.carousel-control-next, .carousel-control-prev {
	padding: 0;
	background: 0 0;
	border: 0;
}

.visually-hidden, .visually-hidden-focusable:not(:focus):not(:focus-within)
	{
	position: absolute !important;
	width: 1px !important;
	height: 1px !important;
	padding: 0 !important;
	margin: -1px !important;
	overflow: hidden !important;
	clip: rect(0, 0, 0, 0) !important;
	white-space: nowrap !important;
	border: 0 !important;
}
</style>
</head>
<style>
	.card-body{
		height: 427px !important;
	}
</style>

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

					<!-- Carusel -->
					<div class="mb-4">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="img/slider_01.png" class="d-block w-100" alt="...">
								</div>
								<div class="carousel-item">
									<img src="img/slider_02.png" class="d-block w-100" alt="...">
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>

					<br>

					<div id = "posts">
						<!-- se agrega con js -->
					</div>
					
					<!-- Cuerpo de pagina - Lista de productos-->
					<!-- 
					<div class="row mr-5 ml-5">
						<div class="col-lg-3">
							<div class="card mb-4">
								<div class="card-body">
									<a href="/detalle"> <img src="img/img1.jpg"
										class="d-block w-100" alt="">
									</a>
									<div class="text-center">
										<a href="/detalle"><h5>Producto</h5></a> <span>S/.35</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card mb-4">
								<div class="card-body">
									<a href="/detalle"> <img src="img/img2.jpg"
										class="d-block w-100" alt="">
									</a>
									<div class="text-center">
										<a href="/detalle"><h5>Producto</h5></a> <span>S/.35</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card mb-3">
								<div class="card-body">
									<a href="/detalle"> <img src="img/img4.jpg"
										class="d-block w-100" alt="">
									</a>
									<div class="text-center">
										<a href="/detalle"><h5>Producto</h5></a> <span>S/.35</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card mb-4">
								<div class="card-body">
									<a href="/detalle"> <img src="img/img4.jpg"
										class="d-block w-100" alt="">
									</a>
									<div class="text-center">
										<a href="/detalle"><h5>Producto</h5></a> <span>S/.35</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				 -->
				<!-- /.container-fluid -->
				</div>
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

	<!-- Mensaje de Boleta-->
	<div class="modal fade" id="msgBoletaModal" tabindex="-1"
		role="dialog" aria-labelledby="msgBoletaLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #4e73df;">
					<h5 class="modal-title" id="msgBoletaLabel" style="color: white;">Boleta</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					  <div class="mb-3 row">
					    <label for="" class="col-sm-6 col-form-label">Numero Boleta</label>
					    <label for="" class="col-sm-6 col-form-label">B000${bol.numBoleta}</label>
					  </div>
					  <div class="mb-3 row">
					    <label for="" class="col-sm-6 col-form-label">Usuario</label>
					    <label id="id_usuario_nombre" for="" class="col-sm-6 col-form-label">${bol.usuario.nombre} ${bol.usuario.apellido}</label>
					  </div>
					   <div class="mb-3 row">
					    <label for="" class="col-sm-6 col-form-label">Fecha Boleta</label>
					    <label for="" class="col-sm-6 col-form-label">${bol.fecha}</label>
					  </div>
					   <div class="mb-3 row">
					    <label for="" class="col-sm-6 col-form-label">Total</label>
					    <label for="" class="col-sm-6 col-form-label">S/. ${bol.total}</label>
					  </div>
					  <div class="mb-3 row">
					    <label for="" class="col-sm-6 col-form-label">Estado</label>
					    <label for="" class="col-sm-6 col-form-label">En proceso</label>
					  </div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal" id="id_aceptar_boleta">Aceptar</button>
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
	
	<script type="text/javascript">
	
		$(document).ready(function() {
			var nom = $("#id_usuario_nombre").text();
			console.log(nom);
			if (nom == " ") {
				
			} else {
				$("#msgBoletaModal").modal("show");
			}
			
			$.getJSON("listarEnTienda", {}, function(data) {				
				var cont = 4;
				var row = 0;
				$.each(data, function(i, item){
					if(cont == 4) {
						row++;
						var div = document.createElement('div');
						div.setAttribute('class', 'row mr-5 ml-5');
						div.setAttribute('id', "id_"+row);
						$('#posts').append(div);
						cont = 0;
					};
					
					var div = document.createElement('div');
					var name = item.nomProd;
					
					div.setAttribute('class', 'col-lg-3');
					div.innerHTML = "<div class='card mb-4'><div class='card-body'><a href='/detalle/"+item.idProd+"'> <img src='"+item.urlImg+"' class='d-block w-100' alt=''></a><div class='text-center'><a href='/detalle/"+item.idProd+"'><h5>"+item.nomProd+"</h5> </a> <span>S/. "+item.precio+"</span></div></div></div>";
		
					console.log(name);
					$("#id_"+row).append(div);
					cont++;
				});
			});
		});
		
		$("#id_aceptar_boleta").click(function (){
			$("#msgBoletaModal").modal("hide");
		})

	</script>
	<script>
		  window.watsonAssistantChatOptions = {
		      integrationID: "36b1b9cd-e5bf-436f-8d59-50ecbd2126f1", // The ID of this integration.
		      region: "us-south", // The region your integration is hosted in.
		      serviceInstanceID: "6703e13e-d5d9-497d-9c68-e8c0fb6c041d", // The ID of your service instance.
		      onLoad: function(instance) { instance.render(); }
		    };
		  setTimeout(function(){
		    const t=document.createElement('script');
		    t.src="https://web-chat.global.assistant.watson.appdomain.cloud/loadWatsonAssistantChat.js";
		    document.head.appendChild(t);
		  });
	</script>
</body>
</html>
























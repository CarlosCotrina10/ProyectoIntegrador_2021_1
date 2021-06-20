<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
									<img src="img/producto/${prod.idProd }.jpg" class="d-block w-100" alt="">
								</div>
							</div>
						</div>
						<div class="col-md-6 p-5">
							<input type="hidden" name="idProducto" id="id_producto_id" class="form-control" value="${prod.idProd}"/>	
							<h1>${prod.nomProd}</h1>
							<input id="id_producto_nombre" value="${prod.nomProd}" type="hidden"/>	
							<div>${prod.descripcion}</div>
							
							<div>Stock: ${prod.stock }</div>
							<input type="hidden" name="idStock" id="id_producto_stock" class="form-control" value="${prod.stock}"/>

							<div class="my-5">
								<span class="text-lg text-danger"><strong>S/.${prod.precio }</strong></span>
								<input type="hidden" name="idPrecio" id="id_producto_precio" class="form-control" value="${prod.precio}"/>
							</div>
							<form>
								<div class="col-md-2 p-0 mb-3">
									<input class="form-control" type="number" value="1" min="1"
										step="1" id="id_producto_cantidad" pattern="[0-9]{10}" onkeypress="return validarSoloNumerosEnteros(event);">
								</div>
								<div>
									<input id="id_btnAgregar" class="btn btn-block btn-success btn-lg" 
										value="AGREGAR AL CARRITO" readonly="readonly">
								</div>
							</form>
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
		
	<script type="text/javascript">
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
		  
		//Solo numeros en caja de texto
			function validarSoloNumerosEnteros(e) { // 1
				tecla = (document.all) ? e.keyCode : e.which; // 2
				if (tecla == 8)	return true; // 3
				patron = /[0-9]/;// Solo acepta números
				te = String.fromCharCode(tecla); // 5
				return patron.test(te); // 6
			}
			  
		//Al pulsar el botón agregar
			$("#id_btnAgregar").click(function (){
				console.log("SE ENTRO A BTN AGREAR>>>>>>>>>>>>>>>>>>>>>>");
				var var_pro = $("#id_producto_id").val();
				var var_can = $("#id_producto_cantidad").val();
				var var_stk = $("#id_producto_stock").val();
								
				if ( var_can == '' ){
					console.log('ERROR>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
				}else{
					var var_nom = $("#id_producto_nombre").val();
					var var_pre = $("#id_producto_precio").val();
											
					var jsonParam = {"idProd" :var_pro,"nombre":var_nom,"precio":var_pre,"cantidad":var_can};
					console.log(jsonParam);
					$.ajax({
						url:  'agregarCarritoItem',
						type: 'POST',
						dataType:'json',
						data: jsonParam,
						success: function(data){
							console.log(data);
							if(data != null){
								console.log(data);
								console.log('EXITO>>>>>>>>>>>>>>>>');
								window.location.href = "/carrito";
								//window.location.replace("/carrito");
							}else {
								console.log('ERROR2>>>>>>>>>>>>>>>>');
							}
						},
						error: function (jqXhr) { 
							console.log('ERROR3>>>>>>>>>>>>>>>>>>>')
						},
				   });	
						
				}
			});
	</script>
	
</body>
</html>
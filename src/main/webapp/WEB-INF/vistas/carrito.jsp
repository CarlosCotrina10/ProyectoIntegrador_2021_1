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
				<jsp:include page="topBar.jsp" />
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid" style="min-height: 400px;">

					<div>
						<!-- Cuando el carrito tiene producto -->
						<h2 class="text-gray-900">
							<strong>CARRITO DE COMPRAS</strong>
							<input id="id_usuario_id" value="${sessionScope.objUsuario.codUsuario}" type="hidden"/>	
							<input id="id_usuario_nombre" value="${sessionScope.objUsuario.nombre}" type="hidden"/>	
							<input id="id_usuario_apellido" value="${sessionScope.objUsuario.apellido}" type="hidden"/>	
						</h2>
						<div>
							<br>
							<table class="w-100 table">
								<thead class="text-gray-900">
									<tr class="row">
										<th class="col-md-1"></th>
										<th class="col-md-7">Título</th>
										<th class="col-md-1">Precio unitario</th>
										<th class="col-md-1">Cantidad</th>
										<th class="col-md-1">Subtotal</th>
										<th class="col-md-1"></th>
									</tr>
								</thead>
								<tbody id="id_table_boleta_body">
									<!-- aqui va un for -->
									<!-- 
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
									 -->
									<!-- end for -->
								</tbody>
								<tfoot id="id_table_boleta_footer">
								<!--  
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
								-->
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
		  
		  //Llenar carrito
		  $(document).ready(function() {
			  	var total = 0;

				$.getJSON("listaCarrito",{}, function (data){
					console.log(data);
					if(data.length != 0){
						$.each(data, function(index, item){
							$('#id_table_boleta_body').append("<tr class='row'><td class='col-md-1'><a href='/detalle/"+item.idProd+"'><img src='img/producto/"+item.idProd+".jpg' alt='' class='img-fluid'></a></td><td class='col-md-7'><a href='/detalle/"+item.idProd+"' class='text-decoration-none'>"+item.nombre+"</a></td><td class='col-md-1'><span class='text-danger'>S/.</span>"+item.precio+"</td><td class='col-md-1'><input type='number' disabled class='form-control' value='"+item.cantidad+"'></td><td class='col-md-1'><span class='text-danger'>S/.</span>"+item.totalParcial+"</td><td class='col-md-1'><a class='' href='#' onclick='f_elimina_itemCarrito(" + item.idProd +");' role='button'><i class='fas fa-trash-alt fa-fw' style='width: 100%;'></i></a></td></tr>");     
							total = total + item.totalParcial;
						});
						
						$('#id_table_boleta_footer').append("<tr class='row'><td class='col-md-8'></td><td class='col-md-3 text-right'><div class='text-danger'><strong>Total a Pagar S/. "+total+"</strong></div><div class='my-4'><a href='/registraBoleta'><button id='id_btnRegistrar' class='btn btn-lg btn-primary w-100'>COMPRAR</button></a></div></td><td class='col-md-1'></td></tr>");
					} else {
						$('#id_table_boleta_footer').append("<div class='text-center' style='margin-top: 160px;'><h4><strong><span class='text-danger'>TU CARRITO ESTÁ VACÍO </span>¡AGREGA TUS PRODUCTOS Y DISFRUTA DE NUESTROS BAJOS PRECIOS!</strong></h4></div>");	
					}	
					$("#id_carrito_num").text(data.length);
				});
			});
		  
		//Al pulsar el botón eliminar
			function f_elimina_itemCarrito(id){	
				//limpiar la tabla
				$("#id_table_boleta_body").empty();
					
				$.getJSON("eliminaCarritoItem",{"idProd":id}, function (data){
					$.each(data, function(index, item){
						$('#id_table_boleta_body').append("<tr class='row'><td class='col-md-1'><a href='/detalle/"+item.idProd+"'><img src='img/"+item.idProd+".jpg' alt='' class='img-fluid'></a></td><td class='col-md-7'><a href='/detalle/"+item.idProd+"' class='text-decoration-none'>"+item.nombre+"</a></td><td class='col-md-1'><span class='text-danger'>S/.</span>"+item.precio+"</td><td class='col-md-1'><input type='number' disabled class='form-control' value='"+item.cantidad+"'></td><td class='col-md-1'><span class='text-danger'>S/.</span>"+item.totalParcial+"</td><td class='col-md-1'><a class='' href='#' onclick='f_elimina_itemCarrito(" + item.idProd +");' role='button'><i class='fas fa-trash-alt fa-fw' style='width: 100%;'></i></a></td></tr>");                
					});
					location.reload(); 
				});
				
				
		
			}
		/*
			function f_genera_boleta(){
				console.log('FUNCTION GENERA BOLETA>>>>>>>>>>>>>>>>>>>>>>>>>>>');
				var var_usu = $("#id_usuario_id").val();
				var var_ape = $("#id_usuario_apellido").val();
				var var_nom = $("#id_usuario_nombre").val();
				var var_nom_com =  var_nom + ' ' + var_ape;
				
				if (var_usu == "0"){
					//algo
				}else{

					//var jsonParam = {"codUsuario":var_usu,"nombre":var_nom_com};

					$.ajax({
						url:  'registraBoleta',
						type: 'POST',
						success:function(data){
							if(data.texto != "-1"){
								console.log('ERROR>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>')
							}
						},
						error: function (jqXhr) { 
							console.log('ERROR2>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>')
						}
				   });	
					   
				}
			}
		*/
	
	</script>
</body>
</html>
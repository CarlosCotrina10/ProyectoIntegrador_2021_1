<html lang="esS" >
<head>
<meta charset="UTF-8">
</head>
<body>

<!-- Bootstrap core JavaScript-->
	<script type="text/javascript" src="vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript"  src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>


 <div class="container">
 <h3 >Listado de Productos</h3>
 <br>
		 <div class="col-md-23" >  

				  
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_listar" style="width: 150px">Listar</button>
						</div>
						
					</div>
					<br>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th style="width: 5%" >ID</th>
												<th style="width: 25%">Nombre</th>
												<th style="width: 25%">Descripción</th>
												<th style="width: 10%">Stock</th>
												<th style="width:10%">Precio</th>
												<th style="width: 10%">Categoria</th>
												<th style="width: 10%">Estado</th>
												<th style="width: 10%">Detalle</th>
												
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>
								</div>	
						</div>
					</div>
		  </div>
  
  
  
	
<script type="text/javascript">


$("#id_btn_listar").click(function(){
	
	$.getJSON("listarEnTienda", function (lista){
		agregarGrilla(lista);
	});
});

function agregarGrilla(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
			columns:[
				{data: "idProd"},
				{data: "nomProd"},
				{data: "descripcion"},
				{data: "stock"},
				{data: "precio"},
				{data: "Categoria"},
				{data: "estado"},
																
			]                                     
	    });
}




</script>









</body>
</html>
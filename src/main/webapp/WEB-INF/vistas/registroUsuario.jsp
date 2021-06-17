<!DOCTYPE html>
<html  lang="esS">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Registro Usuario</title>
<!-- Custom fonts for this template-->
<link href="css/bootstrapValidator.css" rel="stylesheet" type="text/css">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
	
<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>
<style>
	.help-block{
		color: red;
    	margin-left: 15px;
	}
</style>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp"></jsp:include>
    <!-- End of Sidebar -->
    

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <jsp:include page="topBarAdmin.jsp"></jsp:include>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          	
			<!-- Cuerpo -->
			<div class="row">

            <div class="col-xl-12 col-lg-12">

              <!-- Area Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Registro de Usuario</h6>
                </div>
                
                <div class="card-body">
                  	<form class="" id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudUsuario" method="post">
                  	
			        <div class="form-group row">
			          <label for="nombre" class="col-xl-2 col-sm-2 col-form-label">Nombre</label>
			           <div class="col-xl-4 col-sm-4">
			             <input type="text" class="form-control" id="id_nombre" name="nombre" placeholder="Ingrese nombre del Usuario"> 
			           </div>
			          <label for="apellido" class="col-xl-2 col-sm-2 col-form-label">Apellido</label>
			           <div class="col-xl-4 col-sm-4">
			            <input type="text" class="form-control" id="id_apellido" name="apellido" placeholder="Ingrese el apellido del Usuario"> 
			           </div>
			        </div>
			        
			        <div class="form-group row">
			          <label for="usuario" class="col-xl-2 col-sm-2 col-form-label">Usuario</label>
			           <div class="col-xl-4 col-sm-4">
			             <input type="text" class="form-control" id="id_usuario" name="user" placeholder="Ingrese el usuario"> 
			           </div>
			          <label for="clave" class="col-xl-2 col-sm-2 col-form-label">Clave</label>
					   <div class="col-xl-4 col-sm-4">
					     <input type="password" class="form-control" id="id_clave" name="clave" placeholder="Ingrese la clave"> 
					   </div>
					</div>
					
					<div class="form-group row">
			          <label for="usuario" class="col-xl-2 col-sm-2 col-form-label">Distrito</label>
			          <div class="col-xl-4 col-sm-4">
			            <select class="form-control" name="distrito" id="id_distrito">
						  <option value=" ">Seleccione un Distrito</option>
						</select> 
			          </div>
					</div>
						        
				    <div class="form-group row">
					  <label for="tipo" class="col-xl-2 col-sm-2 col-form-label">Tipo</label>
					   <div class="col-xl-4 col-sm-5">
					     <select class="form-control" name="tipo" id="id_tipo">
						   <option value=" ">Seleccione un Tipo</option>
						 </select>
					   </div>
					  <label for="estado" class="col-xl-2 col-sm-2 col-form-label">Estado</label>
					   <div class="col-xl-4 col-sm-5">
						  <select class="form-control" name="estado" id="id_estado">
						   <option value=" ">Seleccione un Estado</option>
						        <option value="0">No disponible</option>  
								<option value="1">Disponible</option>
						  </select>
					   </div>
			        </div>
						
                        <div class="form-group row">							
                          <div class="col-sm-12">
                            <div class="float-right"><input type="reset" class="btn btn-success" id="id_limpiar" value="Limpiar">
                              <button type="button" class="btn btn-primary " id="id_registrar" >Registrar</button>                    
                            </div>
                          </div>
                        </div>
                        
					</form>
                </div>
                
                
              </div>

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
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script src="js/bootstrapValidator.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
	
  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
	
  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
  <script src="js/general/general.js"></script>
	
  <script>
  	$(document).ready(function(){
  		cambiarLinkSidebar("#nav-prod","#collapseProducto","#nav-usu","#collapseUsuario",1);
  	});
	
  </script>
  
  <script type="text/javascript">
  
  $.getJSON("listaDistrito", {}, function(data){
		$.each(data, function(i,item){
			$("#id_distrito").append("<option value="+item.codDistrito +">"+ item.nomDistrito +"</option>");
		});
	});

  $.getJSON("listaTiposUsuario", {}, function(data){
		$.each(data, function(i,item){
			$("#id_tipo").append("<option value="+item.idTipo +">"+ item.descripcion +"</option>");
		});
	});
  
  $("#id_registrar").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
	    validarForm()
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "agregarUsuarios", 
	          data: $('#id_form_registra').serialize(),
	          success: function(data){
	        	  mostrarMensaje(data.MENSAJE);
	        	  limpiar();
	        	  validator.resetForm();
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	        });
	        
	    }
	});
  
  function limpiar(){
		$('#id_nombre').val('');
		$('#id_apellido').val('');
		$('#id_usuario').val('');
		$('#id_clave').val('');
		$('#id_distrito').val(' ');
		$('#id_tipo').val(' ');
		$('#id_estado').val('');
	}
  
  </script>
  
  <script type="text/javascript">
	$('#id_form_registra').bootstrapValidator({
	    message: 'Este valor no es valido',
	    feedbackIcons: {
	        valid: 'glyphicon glyphicon-ok',
	        invalid: 'glyphicon glyphicon-remove',
	        validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	    	"nombre": {
	    		selector : '#id_nombre',
	            validators: {
	                notEmpty: {
	                    message: 'El nombre es un campo obligatorio!'
	                },
	                stringLength :{
	                	message:'El nombre es de 3 a 50 caracteres',
	                	min : 3,
	                	max : 50
	                },
	                
	            }
	        },
		    "apellido": {
				selector : '#id_apellido',
		        validators: {
		            notEmpty: {
		                message: 'El apellido es un campo obligatorio!'
		            },
		            stringLength :{
		            	message:'El apellido es de 3 a 50 caracteres',
		            	min : 3,
		            	max : 50
		            }
		        }
		    },
	        "user": {
	    		selector : '#id_usuario',
	            validators: {
	                notEmpty: {
	                    message: 'El nombre de usuario es un campo obligatorio!'
	                },
                    regexp: {
                        regexp: '^[^@\\s]+@([^@\\s]+\\.)+[^@\\s]+$',
                        message: 'El correo no es valido'
                    }
	            }
	        },
	        "clave": {
	    		selector : '#id_clave',
	            validators: {
	            	notEmpty: {
	                    message: 'La clave es un campo obligatorio!'
	                },
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: 'La clave es de 6 a 20 caracteres'
                    },
	            }
	        },
	        "distrito.nomDistrito": {
	    		selector : '#id_distrito',
	            validators: {
	            	notEmpty: {
	                    message: 'Debes seleccionar un distrito!'
	                }
	            }
	        },
	        "tipo.descripcion": {
	    		selector : '#id_tipo',
	            validators: {
	            	notEmpty: {
	                    message: 'Debes seleccionar un tipo de usuario!'
	                }
	            }
	        },
	        "estado": {
	    		selector : '#id_estado',
	            validators: {
	            	notEmpty: {
	                    message: 'Debes seleccionar un estado!'
	                }
	            }
	        }
	    	
	    }   
	});
	
	</script> 
	
	<script type="text/javascript">
	
	function validarForm(){
		
		  var MSG_NOMBRE = "El campo nombre admite letras y espacios";
		  var MSG_APELLIDO = "El campo apellidos admite letras y espacios";

		  var expRegNombre=/^[a-zA-Z—Ò¡·…ÈÕÌ”Û⁄˙‹¸\s]+$/;
		  var expRegApellidos=/^[a-zA-Z—Ò¡·…ÈÕÌ”Û⁄˙‹¸\s]+$/;

		     var nombre = document.getElementById("id_nombre");
		     var apellidos = document.getElementById("id_apellido");
		     //Campo nombre
		     if (!expRegNombre.exec(nombre.value))
		     {
		    	mostrarMensaje(MSG_NOMBRE);
		        nombre.focus();
		        return false;
		     }
		     if(!expRegApellidos.exec(apellidos.value))
		     {
		       mostrarMensaje(MSG_APELLIDO);
		       apellidos.focus();
		       return false;
		     }

		     return true;
		  }
	
	</script>
	
	<script type="text/javascript">
	
	var MSG_ERROR = "Se generÛ un error, consulte al administrador";

	function mostrarMensaje(msg, ejecutarAccion){
		$('#msgUsuarioModal').remove();
		
		$("body").append('<div class="modal fade" id="msgUsuarioModal" tabindex="-1" role="dialog" aria-labelledby="msgUsuarioLabel" aria-hidden="true"> '+
			    '<div class="modal-dialog" role="document"> '+
			      '<div class="modal-content"> '+
			        '<div class="modal-header" style="background-color: #4e73df;"> '+
			          '<h5 class="modal-title" id="msgUsuarioLabel" style="color: white;">Mensaje</h5> '+
			          '<button class="close" type="button" data-dismiss="modal" aria-label="Close"> '+
			            '<span aria-hidden="true">◊</span> '+
			          '</button> '+
			        '</div> '+
			        '<div class="modal-body">'+ msg +'</div> '+
			        '<div class="modal-footer"> '+
			          '<button class="btn btn-secondary" id="id_btn_dialog_aceptar" type="button" data-dismiss="modal">Aceptar</button> '+        
			        '</div> '+
			      '</div> '+
			    '</div> '+
			  '</div>');
		
		$("#id_btn_dialog_aceptar").click(function(){
			$('#msgUsuarioModal').modal("hide");
			if(ejecutarAccion != undefined){
				window.location.href = ejecutarAccion;
			}
		});
		
		$('#msgUsuarioModal').modal("show");
		
	}
	
	</script>
  
  
</body>
</html>
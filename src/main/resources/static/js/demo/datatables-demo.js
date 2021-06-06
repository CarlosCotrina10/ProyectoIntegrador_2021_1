// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable();
});

$(document).ready(function() {
  $('#tableDetalle').DataTable();
});

$(document).ready(function() {
  $('#tableGeneral').DataTable();
});

$(document).ready(function() {
  $('#tableCategoria').DataTable({
	  searching: false
  });
});

$(document).ready(function() {
  $('#tableInsumo').DataTable({
	  searching: false,
	  paging: false
  });
});


$("#dataTable tbody tr").click(function() { 	
	var selected = $(this).hasClass("bg-primary"); 
	$("#dataTable tbody tr").removeClass("bg-primary text-gray-100"); 
	if(!selected) $(this).addClass("bg-primary text-gray-100"); 
});

$(document).ready(function() {
  $("#reg-empleado").validate();
});
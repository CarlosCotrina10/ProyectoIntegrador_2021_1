/**
 * 
 */

function cambiarLinkSidebar(navProdR,collProdR,navProdA,collProdA,num){
	console.log(navProdR);			
	$(navProdR).removeClass('active');
	$(collProdR).removeClass('show');
	$(collProdR).children().children().removeClass('active');
	$(collProdA).children().children().removeClass('active');
	$(navProdR).children('.nav-link').addClass('collapsed');
							
	$(navProdA).addClass('active');
	$(collProdA).addClass('show');
	$(collProdA).children().children()[num].className = "collapse-item active";
	$(navProdA).children('.nav-link').removeClass('collapsed');

	
}

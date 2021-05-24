package com.proyecto.tienda.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proyecto.tienda.entidad.Categoria;
import com.proyecto.tienda.entidad.Producto;
import com.proyecto.tienda.servicio.CategoriaServicio;
import com.proyecto.tienda.servicio.TiendaServicio;

@Controller
public class TiendaController {
	
	@Autowired
	private TiendaServicio servicio;
	
	@Autowired
	private CategoriaServicio catservicio;
	
	@RequestMapping("/index")
	public String ver() {
		return "index";
	}
	
	@RequestMapping("/detalle")
	public String verDetalle() {
		return "producto";
	}
	
	//este metodo se elimina solo es de prueba para ver el carrito
		@RequestMapping("/carrito")
		public String verCarrito() {
			return "carrito";
		}

	@RequestMapping("/listaCategorias")
	@ResponseBody
	public List<Categoria> listaCategoria(){
		return catservicio.listaCategorias();
	}
	
	@RequestMapping("/listarEnTienda")
	@ResponseBody
	public List<Producto> listaProductosTienda(){
		System.out.println("------------------------");
		System.out.println("Entro el metodo listaProductosTienda en la consola");
		System.out.println("------------------------");
		return servicio.listaProductosTienda();
	}
	
	@RequestMapping("/listarEnTiendaxStock")
	@ResponseBody
	public List<Producto> listaProductosTiendaxStock(){
		System.out.println("--------------------");
		System.out.println("Entro el metodo listaProductosTiendaxStock en la consola");
		System.out.println("--------------------");
		return servicio.listaProductosPorStock();
	}
	
	@GetMapping("/detalle/{id}")
	public String verDetalleProducto(RedirectAttributes redirectAttributes, @PathVariable("id") int idProd ) {
		Optional<Producto> optProd =  servicio.obtienePorId(idProd);
		System.out.println(optProd.get().getNomProd());
		redirectAttributes.addFlashAttribute("prod", optProd.get());
		return "redirect:/detalle";
	}
	
}

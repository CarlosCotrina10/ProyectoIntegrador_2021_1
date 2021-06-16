package com.proyecto.tienda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EnlaceController {

	@RequestMapping("/verRegistroProducto")
	public String verRegistroProducto() {
		return "registroProducto";
	}
	
	@RequestMapping("/verCategoriaProducto")
	public String verCategoriaUsuario() {
		return "categoriaProducto";
	}
	
	@RequestMapping("/verListadoProducto")
	public String verListadoProducto() {
		return "listadoProducto";
	}
	
	@RequestMapping("/verRegistroUsuario")
	public String verRegistroUsuario() {
		return "registroUsuario";
	}
	
	@RequestMapping("/verListadoUsuario")
	public String verListadoUsuario() {
		return "listadoUsuario";
	}
		
	@RequestMapping("/verPago")
	public String verPago() {
		return "pago";
	}
	
}

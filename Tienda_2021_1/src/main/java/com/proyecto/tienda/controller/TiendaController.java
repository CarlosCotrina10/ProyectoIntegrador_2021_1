package com.proyecto.tienda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TiendaController {
	
	@RequestMapping("/index")
	public String ver() {
		return "index";
	}
	
	@RequestMapping("/detalle")
	public String verDetalle() {
		return "producto";
	}
}

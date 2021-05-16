package com.proyecto.tienda.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
}

package com.proyecto.tienda.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.proyecto.tienda.entidad.Categoria;
import com.proyecto.tienda.entidad.Producto;
import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.servicio.CategoriaServicio;
import com.proyecto.tienda.servicio.ProductoServicio;

@Controller
public class ProductoController {
	
	@Autowired
	private ProductoServicio productoServicio;
	
	@Autowired
	private CategoriaServicio categoriaServicio;
	
	//Listar Categoria
	@ResponseBody
	@RequestMapping("/listarCategoria")
	public List<Categoria> listaCategoria(){
		return categoriaServicio.listaCategorias();
	}
	
	//Registrar Producto
		@ResponseBody
		@RequestMapping("/registraProducto")
		public Map<String, Object> insertaProducto(Producto obj){
			Map<String,Object> salida = new HashMap<>();
			Producto objSalida = productoServicio.insertarProducto(obj);
			if(objSalida == null) {
				salida.put("MENSAJE","Registro Erróneo");
			}else {
				salida.put("MENSAJE","Registro Exitoso");
			}
			return salida;
		}
		
		
		/*
	     * ----- MANTENIMIENTO PRODUCTO ---------
	     */
		
		
		
}


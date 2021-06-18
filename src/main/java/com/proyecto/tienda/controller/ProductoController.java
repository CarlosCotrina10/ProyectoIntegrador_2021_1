package com.proyecto.tienda.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.proyecto.tienda.entidad.Categoria;
import com.proyecto.tienda.entidad.Producto;
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
		
		//Listar Producto
		@ResponseBody
	    @RequestMapping("/listarProducto")
	    public List<Producto> listaProducto(){
	    	return productoServicio.listaProducto();
	    }    
		
		//Actualizar Producto
		@ResponseBody
		@RequestMapping("/modificarProducto")
		public Map<String, Object> actualizaProducto(Producto obj){
			Map<String, Object> salida = new HashMap<>();
			try {
				Producto objSalida = productoServicio.RegistraActualizaProducto(obj); 
				if (objSalida == null) {
					salida.put("MENSAJE", "Error al actualizar");
				}else {
					salida.put("MENSAJE", "Actualización Completada");
				}
			} catch (Exception e) {
				e.printStackTrace();
				salida.put("MENSAJE", "Error en el sistema");
			} finally {
				List<Producto> lista = productoServicio.listaProducto();
				salida.put("lista", lista);
			}
			return salida;
		}
		
		
		//eliminar
		@ResponseBody
		@RequestMapping("/eliminarProducto")
		public Map<String, Object> eliminaProducto(int idpro){
			Map<String, Object> salida = new HashMap<>();
			try {
			Optional<Producto> objSalida = productoServicio.obtienePorId(idpro);
				if(objSalida.isPresent()) {
					productoServicio.eliminaProducto(idpro); 
					salida.put("MENSAJE", "Eliminación Completa");
				}else {
					salida.put("MENSAJE", "Errror al Eliminar");
				}
			}catch(Exception ex){
				ex.printStackTrace();
				salida.put("MENSAJE", "Error con el Servidor");
			}finally {
				List<Producto> lista = productoServicio.listaProducto(); 
				salida.put("lista",lista);
				
			}
			return salida;
		}
		
		
}


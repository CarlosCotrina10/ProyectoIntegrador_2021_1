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
import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.servicio.CategoriaServicio;

@Controller
public class CategoriaController {

	@Autowired
	private CategoriaServicio categoriaServicio;
	
	@ResponseBody
	@RequestMapping("/registraCategoria")
	public Map<String, Object> registrarCategoria(Categoria obj){
		Map<String, Object> mensaje = new HashMap<String, Object>();
    	try {
    		Categoria objSalida = categoriaServicio.registrarActualizarCategoria(obj);
			if(objSalida == null) {
				mensaje.put("MENSAJE", "Falló al registrar Categoria");
			} else {
				mensaje.put("MENSAJE", "Categoria registrado");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mensaje.put("MENSAJE", "Error al Registrar Categoria");
		} finally {
			List<Categoria> lista = categoriaServicio.listaCategorias();
			mensaje.put("lista", lista);
		}
    	
    	return mensaje;
	}
	
	@ResponseBody
    @RequestMapping("/eliminarCategoria")
    public Map<String, Object> eliminarUsuario(int id){
    	System.out.println("-------------"+id);
    	Map<String, Object> mensaje = new HashMap<String, Object>();
    	try {
    		Optional<Categoria> opt = categoriaServicio.obtenerCategoriaPorId(id);
			if(opt.isPresent()) {
				categoriaServicio.eliminarCategoria(id);
				mensaje.put("MENSAJE", "Categoria eliminado");
			} else {
				mensaje.put("MENSAJE", "Falló al eliminar Categoria");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mensaje.put("MENSAJE", "Existen Producto usando esta Categoria, elimine primero los Productos");
		} finally {
			List<Categoria> lista = categoriaServicio.listaCategorias();
			mensaje.put("lista", lista);
		}
    	
    	return mensaje;
    } 
	
}

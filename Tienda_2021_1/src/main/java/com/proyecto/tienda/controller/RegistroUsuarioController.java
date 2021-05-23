package com.proyecto.tienda.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.entidad.Distritos;
import com.proyecto.tienda.entidad.TiposUsuario;
import com.proyecto.tienda.servicio.UsuarioServicio;
import com.proyecto.tienda.servicio.DistritosServicio;
import com.proyecto.tienda.servicio.TiposUsuarioServicio;

@Controller
public class RegistroUsuarioController {

	@Autowired
	private UsuarioServicio usuarioServicio;
	
	
	@Autowired
	private DistritosServicio distritosServicio;
	
	@Autowired
	private TiposUsuarioServicio tiposServicio;
	
	
	//Listar Distritos
	@ResponseBody
	@RequestMapping("/listaDistrito")
	public List<Distritos> listarDistrito(){
		return distritosServicio.listarDistritos();
	}
	
	//Listar TiposUsuario
	@ResponseBody
	@RequestMapping("/listaTiposUsuario")
	public List<TiposUsuario> listarTiposUsuario(){
		return tiposServicio.listarTiposUsuario();
	}
	
	//Registrar Cliente
    @ResponseBody
	@RequestMapping("/registraUsuario")
	public Map< String, Object> insertaUsuario(Usuario obj){
		Map< String, Object> salida = new HashMap<>();
		Usuario objSalida = usuarioServicio.insertarUsuario(obj);
		if(objSalida == null) {
			salida.put("MENSAJE", "Registro Erronéo");
		}else {
			salida.put("MENSAJE", "Registro Exitoso");
		}
		return salida;
	}

}

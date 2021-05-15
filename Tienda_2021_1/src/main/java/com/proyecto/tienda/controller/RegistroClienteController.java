package com.proyecto.tienda.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.tienda.entidad.Cliente;
import com.proyecto.tienda.entidad.Distritos;
import com.proyecto.tienda.servicio.ClienteServicio;
import com.proyecto.tienda.servicio.DistritosServicio;

@Controller
public class RegistroClienteController {

	@Autowired
	private ClienteServicio clienteServicio;
	
	
	@Autowired
	private DistritosServicio distritosServicio;
	
	
	//Listar Distritos
	@ResponseBody
	@RequestMapping("/listaDistrito")
	public List<Distritos> listarDistrito(){
		return distritosServicio.listarDistritos();
	}
	
	//Registrar Cliente
    @ResponseBody
	@RequestMapping("/registraCliente")
	public Map< String, Object> insertaCliente(Cliente obj){
		Map< String, Object> salida = new HashMap<>();
		Cliente objSalida = clienteServicio.insertarCliente(obj);
		if(objSalida == null) {
			salida.put("MENSAJE", "Registro Erronéo");
		}else {
			salida.put("MENSAJE", "Registro Exitoso");
		}
		return salida;
	}
	
	
	
	
}

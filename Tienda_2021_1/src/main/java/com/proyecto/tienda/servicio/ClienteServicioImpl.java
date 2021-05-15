package com.proyecto.tienda.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Cliente;
import com.proyecto.tienda.repositorio.ClienteRepositorio;

@Service
public class ClienteServicioImpl implements ClienteServicio {

	@Autowired
	private ClienteRepositorio repositorio; 
	
	@Override
	public Cliente insertarCliente(Cliente obj) {
		return repositorio.save(obj);
	}
	
	

	
}

package com.proyecto.tienda.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.repositorio.UsuarioRepositorio;

@Service
public class UsuarioServicioImpl implements UsuarioServicio {

	@Autowired
	private UsuarioRepositorio repositorio;

	@Override
	public Usuario insertarUsuario(Usuario obj) {
		return repositorio.save(obj);
	}


	@Override
	public Usuario save(Usuario bean) {
		return repositorio.save(bean);
	}



	
	
	
	

	
}

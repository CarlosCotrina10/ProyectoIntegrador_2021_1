package com.proyecto.tienda.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.TiposUsuario;
import com.proyecto.tienda.repositorio.TiposUsuarioRepositorio;

@Service
public class TiposUsuarioServicioImpl implements TiposUsuarioServicio {
	
	@Autowired
	private TiposUsuarioRepositorio repositorio;

	@Override
	public List<TiposUsuario> listarTiposUsuario() {
		return repositorio.findAll();
	}

}

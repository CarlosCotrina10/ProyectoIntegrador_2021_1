package com.proyecto.tienda.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Categoria;
import com.proyecto.tienda.repositorio.CategoriaRepositorio;

@Service
public class CategoriaServicioImpl implements CategoriaServicio {

	@Autowired
	private CategoriaRepositorio catrepos;
	
	@Override
	public List<Categoria> listaCategorias() {
		return catrepos.findAll();
	}

}

package com.proyecto.tienda.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Categoria;
import com.proyecto.tienda.repositorio.CategoriaRepositorio;

@Service
public class CategoriaServicioImpl implements CategoriaServicio {

	@Autowired
	private CategoriaRepositorio repositorio;
	
	@Override
	public List<Categoria> listaCategorias() {
		return repositorio.findAll();
	}

	@Override
	public Categoria registrarActualizarCategoria(Categoria obj) {	
		return repositorio.save(obj);
	}

	@Override
	public void eliminarCategoria(int id) {
		repositorio.deleteById(id);		
	}

	@Override
	public Optional<Categoria> obtenerCategoriaPorId(int id) {
		return repositorio.findById(id);
	}

}

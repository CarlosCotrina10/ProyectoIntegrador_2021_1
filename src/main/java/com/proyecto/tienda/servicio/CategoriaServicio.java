package com.proyecto.tienda.servicio;

import java.util.List;
import java.util.Optional;

import com.proyecto.tienda.entidad.Categoria;

public interface CategoriaServicio {
	
	public abstract List<Categoria> listaCategorias(); 
	
	public abstract Categoria registrarActualizarCategoria(Categoria obj);
	
	public abstract void eliminarCategoria(int id);
	
	public abstract Optional<Categoria> obtenerCategoriaPorId(int id);
	
}

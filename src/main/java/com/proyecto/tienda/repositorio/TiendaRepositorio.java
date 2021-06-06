package com.proyecto.tienda.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.proyecto.tienda.entidad.Producto;

public interface TiendaRepositorio extends JpaRepository<Producto, Integer> {
	
	//listado Tienda por stock
	@Query(value = "Select p.* from tb_productos p where p.stock > 20", nativeQuery = true)
	public abstract List<Producto> listaProductosPorStock();
	

}

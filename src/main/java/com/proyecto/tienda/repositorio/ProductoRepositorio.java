package com.proyecto.tienda.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.proyecto.tienda.entidad.Producto;

public interface ProductoRepositorio extends JpaRepository<Producto, Integer> {
	
	@Query("select p from Producto p where p.estado = 1")
	public abstract List<Producto> listadoPorEstado();
		
	@Transactional
	@Modifying
	@Query("update Producto p set p.estado = 0 where p.idProd = :param_id")
	public abstract void actualizarPorEstado(@Param("param_id") int id);
}

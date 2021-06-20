package com.proyecto.tienda.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.tienda.entidad.DetalleBoleta;

public interface DetalleBoletaRepositorio extends JpaRepository<DetalleBoleta, Integer> {

	@Modifying
	@Query("update Producto x set x.stock = x.stock - :can where x.idProd = :pro")
	public abstract void actualizaStock(@Param("can")int cantidad, @Param("pro")int idProd);
	
}

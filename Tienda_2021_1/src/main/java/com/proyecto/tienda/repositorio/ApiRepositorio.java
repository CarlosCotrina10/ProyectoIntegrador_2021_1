package com.proyecto.tienda.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.proyecto.tienda.entidad.Boleta;

public interface ApiRepositorio extends JpaRepository<Boleta, String>{
	/*
	@Query("")
	public abstract Boleta cancelaCompra(String numBoleta);
*/
}

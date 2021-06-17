package com.proyecto.tienda.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.tienda.entidad.Producto;

public interface ProductoRepositorio extends JpaRepository<Producto, Integer> {
	
}

package com.proyecto.tienda.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import com.proyecto.tienda.entidad.Producto;

public interface TiendaRepositorio extends JpaRepository<Producto, Integer> {

}

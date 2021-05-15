package com.proyecto.tienda.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import com.proyecto.tienda.entidad.Cliente;

public interface ClienteRepositorio extends JpaRepository<Cliente, Integer>{

}

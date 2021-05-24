package com.proyecto.tienda.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;


import com.proyecto.tienda.entidad.Usuario;

public interface UsuarioRepositorio extends JpaRepository<Usuario, Integer>{
	

	
}

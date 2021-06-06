package com.proyecto.tienda.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.proyecto.tienda.entidad.Usuario;

public interface UsuarioRepositorio extends JpaRepository<Usuario, Integer>{
	

	@Query("Select u from Usuario u where u.usuario = :#{#usu.usuario} and u.clave = :#{#usu.clave}")
	public abstract Usuario login(@Param(value = "usu") Usuario obj);
	
}

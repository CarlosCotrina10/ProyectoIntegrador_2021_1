package com.proyecto.tienda.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.proyecto.tienda.entidad.Usuario;

public interface UsuarioRepositorio extends JpaRepository<Usuario, Integer>{
	

	@Query("Select u from Usuario u where u.user = :#{#usu.user} and u.clave = :#{#usu.clave}")
	public abstract Usuario login(@Param(value = "usu") Usuario obj);
	
	@Query("Select u from Usuario u where nombre like :list")
	public abstract List<Usuario> listaUsuariosPorNombreLike(@Param("list") String listar);
	
}

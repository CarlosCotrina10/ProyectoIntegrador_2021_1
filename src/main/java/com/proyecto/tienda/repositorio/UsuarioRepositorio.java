package com.proyecto.tienda.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.proyecto.tienda.entidad.Usuario;

public interface UsuarioRepositorio extends JpaRepository<Usuario, Integer>{
	

	@Query("Select u from Usuario u where u.user = :#{#usu.user} and u.clave = :#{#usu.clave}")
	public abstract Usuario login(@Param(value = "usu") Usuario obj);
	
	@Query("Select u from Usuario u where estado = 1")
	public abstract List<Usuario> listaUsuariosPorEstado();
	
	public abstract List<Usuario> findByUser(String user);
	
	@Transactional
	@Modifying
	@Query("update Usuario u set u.estado = 0 where u.codUsuario = :iduser")
	public abstract void eliminaEstado(@Param("iduser") int id);
	
}

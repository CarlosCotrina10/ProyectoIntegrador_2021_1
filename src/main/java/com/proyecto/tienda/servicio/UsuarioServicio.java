package com.proyecto.tienda.servicio;

import java.util.List;
import java.util.Optional;

import com.proyecto.tienda.entidad.Usuario;

public interface UsuarioServicio {
	
	public abstract Usuario insertarUsuario(Usuario obj);
	
	public Usuario save(Usuario bean);

	public abstract Usuario loginUsuario(Usuario obj);

	// -- Mantenimiento Usuario:
	public abstract List<Usuario> listaUsuarios();
	public abstract List<Usuario> listaUsuariosPorNombreLike(String listar);
	public abstract Usuario registrayactualiza(Usuario obj);
	public abstract Optional<Usuario> obtieneporId(int idUser);
	public abstract void eliminaUsuario(int id);
	public abstract List<Usuario> listarPorUsuario(String user);
	
}

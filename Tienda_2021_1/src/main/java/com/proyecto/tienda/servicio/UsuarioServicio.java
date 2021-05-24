package com.proyecto.tienda.servicio;

import com.proyecto.tienda.entidad.Usuario;

public interface UsuarioServicio {

	public abstract Usuario insertarUsuario(Usuario obj);
	
	public abstract Usuario login(Usuario bean);
	
	public Usuario save(Usuario bean);
}

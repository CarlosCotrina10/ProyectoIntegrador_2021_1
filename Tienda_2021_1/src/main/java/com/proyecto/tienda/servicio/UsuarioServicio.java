package com.proyecto.tienda.servicio;

import com.proyecto.tienda.entidad.Usuario;

public interface UsuarioServicio {

	public abstract Usuario insertarUsuario(Usuario obj);
	
	public abstract Usuario loginUsuario(Usuario obj);
}

package com.proyecto.tienda.entidad;

public class UsuarioFalso {
	
	private String nombre;
	
	private String apellido;

	private Distritos distrito;
	
	private String usuario;
	
	private String clave;
	
	private TiposUsuario tipo;

	public String getUsuario() {
		return usuario;
	}

	public TiposUsuario getTipo() {
		return tipo;
	}

	public void setTipo(TiposUsuario tipo) {
		this.tipo = tipo;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Distritos getDistrito() {
		return distrito;
	}

	public void setDistrito(Distritos distrito) {
		this.distrito = distrito;
	}
	
	
	
}

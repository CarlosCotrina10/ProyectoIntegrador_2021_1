package com.proyecto.tienda.entidad;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="tb_cliente")
public class Cliente {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codcliente;
	
	private String nomdistrito;
	private String apellido;
	private int telefeno;
	private int dni;
	private String correo;
	
	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "codDistrito")
	private Distritos codDistrito;

	public int getCodcliente() {
		return codcliente;
	}

	public void setCodcliente(int codcliente) {
		this.codcliente = codcliente;
	}

	public String getNomdistrito() {
		return nomdistrito;
	}

	public void setNomdistrito(String nomdistrito) {
		this.nomdistrito = nomdistrito;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public int getTelefeno() {
		return telefeno;
	}

	public void setTelefeno(int telefeno) {
		this.telefeno = telefeno;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public Distritos getCodDistrito() {
		return codDistrito;
	}

	public void setCodDistrito(Distritos codDistrito) {
		this.codDistrito = codDistrito;
	}

	

	
}

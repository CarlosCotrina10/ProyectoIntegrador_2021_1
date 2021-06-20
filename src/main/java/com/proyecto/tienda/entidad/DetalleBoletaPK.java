package com.proyecto.tienda.entidad;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable	
public class DetalleBoletaPK implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Column(name = "numBoleta", unique = true, nullable = false, insertable = true, updatable = false)
	private String numBoleta;
	
	@Column(name = "idProd", unique = true, nullable = false, insertable = true, updatable = false)
	private int idProd;

	public String getNumBoleta() {
		return numBoleta;
	}

	public void setNumBoleta(String numBoleta) {
		this.numBoleta = numBoleta;
	}

	public int getIdProd() {
		return idProd;
	}

	public void setIdProd(int idProd) {
		this.idProd = idProd;
	}
	
	
	
}

package com.proyecto.tienda.entidad;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable	
public class DetalleBoletaPK implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private int numBoleta;
	
	private int idprod;
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		int num;
		result = prime * result + numBoleta;
		result = prime * result + idprod;
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DetalleBoletaPK other = (DetalleBoletaPK) obj;
		if (numBoleta != other.numBoleta)
			return false;
		if (idprod != other.idprod)
			return false;
		return true;
	}

	public int getNumBoleta() {
		return numBoleta;
	}

	public void setNumBoleta(int numBoleta) {
		this.numBoleta = numBoleta;
	}

	public int getIdProd() {
		return idprod;
	}

	public void setIdProd(int idProd) {
		this.idprod = idProd;
	}
	
	
	
}

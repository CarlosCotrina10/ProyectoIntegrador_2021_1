package com.proyecto.tienda.entidad;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BoletaJSON {
	
	@Id
	String numBoleta;

	public String getNumBoleta() {
		return numBoleta;
	}

	public void setNumBoleta(String numBoleta) {
		this.numBoleta = numBoleta;
	}
	
}

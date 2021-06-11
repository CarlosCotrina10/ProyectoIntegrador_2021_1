package com.proyecto.tienda.entidad;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MensajeJSON {

	@Id
	String info;

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

}


package com.proyecto.tienda.servicio;

import java.util.List;



import com.proyecto.tienda.entidad.Boleta;


public interface BoletaServicio {

	public Boleta insertaBoleta(Boleta obj);

	public abstract List<Boleta> listaBoletas();
	/*
	public abstract List<Boleta> numBolUltimo();
	*/
}

package com.proyecto.tienda.servicio;

import java.util.Optional;

import com.proyecto.tienda.entidad.Boleta;

public interface ApiServicio {

	public abstract Boleta insertaActualiza(Boleta obj);
	public abstract Optional<Boleta> obtienePorNum(int numBoleta);
	
}

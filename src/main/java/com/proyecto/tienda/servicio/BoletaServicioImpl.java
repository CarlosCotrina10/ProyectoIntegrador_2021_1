package com.proyecto.tienda.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Boleta;
import com.proyecto.tienda.entidad.DetalleBoleta;
import com.proyecto.tienda.repositorio.BoletaRepositorio;
import com.proyecto.tienda.repositorio.DetalleBoletaRepositorio;

@Service
public class BoletaServicioImpl implements BoletaServicio {

	@Autowired
	private BoletaRepositorio boletaRepositorio;
	
	@Autowired
	private DetalleBoletaRepositorio detalleBoletaRepositorio;
	
	@Override
	public Boleta insertaBoleta(Boleta obj) {
		Boleta cabecera = boletaRepositorio.save(obj);
		
		for(DetalleBoleta d : cabecera.getDetallesBoleta()) {
			d.getDetalleBoletaPK().setNumBoleta(cabecera.getNumBoleta());
			detalleBoletaRepositorio.actualizaStock(d.getCantidad(), d.getDetalleBoletaPK().getIdProd());
			detalleBoletaRepositorio.save(d);
		}
		
		return cabecera;
	}

	
	
}

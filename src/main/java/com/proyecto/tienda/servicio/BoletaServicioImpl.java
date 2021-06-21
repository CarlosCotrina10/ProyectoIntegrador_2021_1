package com.proyecto.tienda.servicio;

import java.util.List;

import javax.transaction.Transactional;

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
	@Transactional
	public Boleta insertaBoleta(Boleta obj) {
		System.out.println("J>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		System.out.println(obj.getDetallesBoleta().get(0).getDetalleBoletaPK().hashCode()+"HASHCODE>>>>>>>>>>>>>>>>>>");
		
		Boleta cabecera = boletaRepositorio.save(obj);
		System.out.println("F>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		
		for(DetalleBoleta d : cabecera.getDetallesBoleta()) {
			System.out.println("G>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
			d.getDetalleBoletaPK().setNumBoleta(cabecera.getNumBoleta());
			System.out.println("H>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
			detalleBoletaRepositorio.actualizaStock(d.getCantidad(), d.getDetalleBoletaPK().getIdProd());
			System.out.println("I>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
			detalleBoletaRepositorio.save(d);
		}
		
		return cabecera;
	}
/*
	@Override
	public List<Boleta> numBolUltimo() {
		return boletaRepositorio.numBolUltimo();
	}
*/

	@Override
	public List<Boleta> listaBoletas() {
		return boletaRepositorio.findAll();
	}
	
	
}

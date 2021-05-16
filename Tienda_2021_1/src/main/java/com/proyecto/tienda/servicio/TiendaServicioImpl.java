package com.proyecto.tienda.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Producto;
import com.proyecto.tienda.repositorio.TiendaRepositorio;

@Service
public class TiendaServicioImpl implements TiendaServicio  {

	@Autowired
	private TiendaRepositorio repositorio;
	
	@Override
	public List<Producto> listaProductosTienda() {
		return repositorio.findAll();
	}

	@Override
	public List<Producto> listaProductosPorStock() {
		return repositorio.listaProductosPorStock();
	}

}

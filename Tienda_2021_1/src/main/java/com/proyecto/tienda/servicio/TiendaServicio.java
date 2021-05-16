package com.proyecto.tienda.servicio;

import java.util.List;

import com.proyecto.tienda.entidad.Producto;

public interface TiendaServicio {
	
	//listado tienda de los productos
	public abstract List<Producto> listaProductosTienda();
	//listado tienda x stock
	public abstract List<Producto> listaProductosPorStock();
	
}

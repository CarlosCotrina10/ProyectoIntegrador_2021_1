package com.proyecto.tienda.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Distritos;
import com.proyecto.tienda.repositorio.DistritosRepositorio;

@Service
public class DistritosServicioImpl implements DistritosServicio {
 
	@Autowired
	private DistritosRepositorio repositorio; 
	
	@Override
	public List<Distritos> listarDistritos() {
		return repositorio.findAll();
	}

}

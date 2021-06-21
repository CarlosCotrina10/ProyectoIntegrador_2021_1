package com.proyecto.tienda.servicio;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Boleta;
import com.proyecto.tienda.repositorio.ApiRepositorio;

@Service
public class ApiServicioImpl implements ApiServicio {
	
	@Autowired
	private ApiRepositorio repo;

	@Override
	public Boleta insertaActualiza(Boleta obj) {
		return repo.save(obj);
	}

	@Override
	public Optional<Boleta> obtienePorNum(int numBoleta) {
		return repo.findById(numBoleta);
	}
	
	
	
}

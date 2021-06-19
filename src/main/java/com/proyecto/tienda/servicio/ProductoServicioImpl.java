package com.proyecto.tienda.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.proyecto.tienda.entidad.Producto;
import com.proyecto.tienda.repositorio.ProductoRepositorio;

@Service
public class ProductoServicioImpl implements ProductoServicio {

	 
	@Autowired
	private ProductoRepositorio repositorio;
	
	//Registrar Producto
	@Override
	public Producto insertarProducto(Producto obj) {
			return repositorio.save(obj);
	}
	
	
    //CRUD Productp
	@Override
	public List<Producto> listaProducto() {
		return repositorio.findAll();
	}

	@Override
	public Producto RegistraActualizaProducto(Producto obj) {
		return repositorio.save(obj);
	}

	@Override
	public Optional<Producto> obtienePorId(int idProd) {
		return repositorio.findById(idProd);
	}

	@Override
	public void eliminaProducto(int id) {
		repositorio.deleteById(id);	
	}


	@Override
	public List<Producto> listadoPorEstado() {		
		return repositorio.listadoPorEstado();
	}


	@Override
	public void actualizarPorEstado(int id) {
		repositorio.actualizarPorEstado(id);
	}

}

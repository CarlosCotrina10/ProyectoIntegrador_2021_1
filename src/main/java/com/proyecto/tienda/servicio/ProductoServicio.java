package com.proyecto.tienda.servicio;
import java.util.List;
import java.util.Optional;

import com.proyecto.tienda.entidad.Producto;

public interface ProductoServicio {

	public abstract Producto insertarProducto(Producto obj);
	
	
	/*public abstract List<Usuario> listaUsuarios();
	public abstract List<Usuario> listaUsuariosPorNombreLike(String listar);
	public abstract Usuario registrayactualiza(Usuario obj);
	public abstract Optional<Usuario> obtieneporId(int idUser);
	public abstract void eliminaUsuario(int id);
	public abstract List<Usuario> listarPorUsuario(String user);*/
	
	
	//Mantenimiento de Producto
	public abstract List<Producto> listaProducto();
	public abstract Producto RegistraActualizaProducto(Producto obj);
	public abstract Optional<Producto> obtienePorId(int idProd);
	public abstract void eliminaProducto(int id);
	public abstract List<Producto> listadoPorEstado();
	public abstract void actualizarPorEstado(int id);

}

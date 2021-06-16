package com.proyecto.tienda.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.repositorio.UsuarioRepositorio;

@Service
public class UsuarioServicioImpl implements UsuarioServicio {

	@Autowired
	private UsuarioRepositorio repositorio;

	@Override
	public Usuario insertarUsuario(Usuario obj) {
		return repositorio.save(obj);
	}


	@Override
	public Usuario save(Usuario bean) {
		return repositorio.save(bean);
	}
	

	@Override
	public Usuario loginUsuario(Usuario obj) {		
		return repositorio.login(obj);
	}


	@Override
	public List<Usuario> listaUsuarios() {
		return repositorio.findAll();
	}


	@Override
	public List<Usuario> listaUsuariosPorNombreLike(String listar) {
		return repositorio.listaUsuariosPorNombreLike(listar);
	}


	@Override
	public Usuario registrayactualiza(Usuario obj) {
		return repositorio.save(obj);
	}


	@Override
	public void eliminaUsuario(int id) {
		repositorio.deleteById(id);
	}


	@Override
	public Optional<Usuario> obtieneporId(int idUser) {
		return repositorio.findById(idUser);
	}


	@Override
	public List<Usuario> listarPorUsuario(String user) {
		return repositorio.findByUser(user);
	} 
	
}

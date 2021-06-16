package com.proyecto.tienda.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.entidad.Distritos;
import com.proyecto.tienda.entidad.TiposUsuario;
import com.proyecto.tienda.servicio.UsuarioServicio;
import com.proyecto.tienda.servicio.DistritosServicio;
import com.proyecto.tienda.servicio.TiposUsuarioServicio;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioServicio usuarioServicio;
		
	@Autowired
	private DistritosServicio distritosServicio;
	
	@Autowired
	private TiposUsuarioServicio tiposServicio;
	
	
	//Listar Distritos
	@ResponseBody
	@RequestMapping("/listaDistrito")
	public List<Distritos> listarDistrito(){
		return distritosServicio.listarDistritos();
	}
	
	//Listar TiposUsuario
	@ResponseBody
	@RequestMapping("/listaTiposUsuario")
	public List<TiposUsuario> listarTiposUsuario(){
		return tiposServicio.listarTiposUsuario();
	}
	
	//Registro CLiente
    @ResponseBody
	@RequestMapping("/registraUsuario")
	public Map< String, Object> insertaUsuario(Usuario obj){
		Map< String, Object> salida = new HashMap<>();
		Usuario objSalida = usuarioServicio.insertarUsuario(obj);
		if(objSalida == null) {
			salida.put("MENSAJE", "Registro Erronéo");
		}else {
			salida.put("MENSAJE", "Registro Exitoso");
		}
		return salida;
	}
    
    
     /*
     * ----- MANTENIMIENTO USUARIO ---------
     */
    
    // ---- Listar Usuarios
    @ResponseBody
    @RequestMapping("/listarUsuarios")
    public List<Usuario> listaUsuarios(){
    	return usuarioServicio.listaUsuarios();
    }    
    
    // ---- Agregar Nuevo Usuario
    @ResponseBody
    @RequestMapping("/agregarUsuarios")
    public Map<String, Object> registrarUsuario(Usuario obj){
    	Map<String, Object> mensaje = new HashMap<String, Object>();
    	try {
			Usuario objSalida = usuarioServicio.registrayactualiza(obj);
			if(objSalida == null) {
				mensaje.put("MENSAJE", "Falló al agregar Usuario");
			} else {
				mensaje.put("MENSAJE", "Nuevo Usuario agregado");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mensaje.put("MENSAJE", "Error al registrar Usuario");
		} finally {
			List<Usuario> lista = usuarioServicio.listaUsuarios();
			mensaje.put("lista", lista);
		}
    	
    	return mensaje;
    }
    
    
    // ---- Modificar Usuario
    @ResponseBody
    @RequestMapping("/modificarUsuarios")
    public Map<String, Object> modificarUsuario(Usuario obj){
    	Map<String, Object> mensaje = new HashMap<String, Object>();
    	try {
			Usuario objSalida = usuarioServicio.registrayactualiza(obj);
			if(objSalida == null) {
				mensaje.put("MENSAJE", "Falló al modificar Usuario");
			} else {
				mensaje.put("MENSAJE", "Usuario modificado");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error:" + e.getMessage());
			mensaje.put("MENSAJE", "Error al modificar Usuario");
		} finally {
			List<Usuario> lista = usuarioServicio.listaUsuarios();
			mensaje.put("lista", lista);
		}
    	
    	return mensaje;
    }    
    
    
    // ---- Eliminar Usuario
    @ResponseBody
    @RequestMapping("/eliminarUsuarios")
    public Map<String, Object> eliminarUsuario(int id){
    	Map<String, Object> mensaje = new HashMap<String, Object>();
    	try {
    		Optional<Usuario> optUsuario = usuarioServicio.obtieneporId(id);
			if(optUsuario.isPresent()) {
				usuarioServicio.eliminaUsuario(id);
				mensaje.put("MENSAJE", "Usuario eliminado");
			} else {
				mensaje.put("MENSAJE", "Falló al eliminar Usuario");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mensaje.put("MENSAJE", "Error al eliminar Usuario");
		} finally {
			List<Usuario> lista = usuarioServicio.listaUsuarios();
			mensaje.put("lista", lista);
		}
    	
    	return mensaje;
    }    

}

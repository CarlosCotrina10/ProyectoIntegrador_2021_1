package com.proyecto.tienda.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.tienda.entidad.TiposUsuario;
import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.entidad.UsuarioFalso;
import com.proyecto.tienda.servicio.UsuarioServicio;

@Controller
public class LoginRegisterController {
	
	@Autowired
	private UsuarioServicio usuarioServicio;
	
	@RequestMapping("/login")
	public String verLogin() {
		return "login";
	}
	
	@RequestMapping("/loginAdmin")
	public String verLoginAdmin() {
		return "loginAdmin";
	}
	
	@RequestMapping("/register")
	public String verRegister() {
		return "register";
	}
	
	@RequestMapping("/logeo")
	public String login(UsuarioFalso usu, HttpSession session, HttpServletRequest request) {
		
		Usuario u = new Usuario();
		u.setUser(usu.getUsuario());
		u.setClave(usu.getClave());
		Usuario usuario = usuarioServicio.loginUsuario(u);
		if(usuario == null) {
			request.setAttribute("mensaje", "El usuario o contraseña es incorrecto");
			return "login";
		}else {
			session.setAttribute("objUsuario", usuario);
			return "index";
		}
	}
	
	@RequestMapping("/logeoAdmin")
	public String loginAdmin(Usuario usu, HttpSession session2, HttpServletRequest request2) {		
		
		Usuario usuario = usuarioServicio.loginUsuario(usu);
		if(usuario == null) {
			request2.setAttribute("mensaje", "El usuario o contraseña es incorrecto");
			return "loginAdmin";
		}else {
			if(usuario.getTipo().getIdTipo() == 1) {
				
			}else {
				request2.setAttribute("mensaje", "El usuario o contraseña es incorrecto");
				return "loginAdmin";
			}
			session2.setAttribute("objUsuarioAdmin", usuario);
			return "registroProducto";
		}		
		
	}
	
	@ResponseBody
	@RequestMapping("/registrar")
	public Map<String, Object> registro(UsuarioFalso usu) {
		Map<String, Object> salida = new HashMap<>();
				
		Usuario u = new Usuario();
		u.setNombre(usu.getNombre());
		u.setApellido(usu.getApellido());
		u.setDistrito(usu.getDistrito());
		u.setUser(usu.getUsuario());
		u.setClave(usu.getClave());
		u.setTipo(usu.getTipo());
		u.setEstado(1);
		System.out.println("-----------------"+u);
		try {
			List<Usuario> lista = usuarioServicio.listarPorUsuario(u.getUser());
			
			if(CollectionUtils.isEmpty(lista)) {
				Usuario usuario = usuarioServicio.insertarUsuario(u);			
				if(usuario == null) {
					salida.put("mensaje", "Error al registrar Usuario");
					salida.put("tipo", "1");
				}else {
					salida.put("mensaje", "Usuario registrado con exito");
					salida.put("tipo", "2");
				}
			}else {
				salida.put("mensaje", "El Correo ya existe");
				salida.put("tipo", "3");
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", e.getMessage());
		}
		
		return salida;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		session.invalidate();

		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Expires", "0");
		response.setHeader("Pragma", "no-cache");

		request.setAttribute("mensaje", "El usuario salió de sesión");
		return "index";

	}
	
	@RequestMapping("/logoutAdmin")
	public String logoutAdmin(HttpSession session2, HttpServletRequest request2, HttpServletResponse response2) {
		session2.invalidate();

		response2.setHeader("Cache-control", "no-cache");
		response2.setHeader("Expires", "0");
		response2.setHeader("Pragma", "no-cache");

		request2.setAttribute("mensaje", "El usuario salió de sesión");
		return "loginAdmin";

	}

}

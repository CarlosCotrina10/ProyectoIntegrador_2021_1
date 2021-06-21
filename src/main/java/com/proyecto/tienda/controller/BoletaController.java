package com.proyecto.tienda.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proyecto.tienda.entidad.Boleta;
import com.proyecto.tienda.entidad.CarritoItem;
import com.proyecto.tienda.entidad.DetalleBoleta;
import com.proyecto.tienda.entidad.DetalleBoletaPK;
import com.proyecto.tienda.entidad.Mensaje;
import com.proyecto.tienda.entidad.Usuario;
import com.proyecto.tienda.servicio.BoletaServicio;
import com.proyecto.tienda.servicio.ProductoServicio;
import com.proyecto.tienda.servicio.UsuarioServicio;

@Controller
public class BoletaController {
	
	@Autowired
	private UsuarioServicio usuarioServicio;
	
	@Autowired
	private ProductoServicio productoServicio;
	
	@Autowired
	private BoletaServicio boletaServicio;
	
	private List<CarritoItem> carrito = new ArrayList<CarritoItem>();
	
	@RequestMapping("/agregarCarritoItem")
	@ResponseBody
	public List<CarritoItem> agregarCarritoItem(CarritoItem obj) {
		Boolean encontro=false;
		for (CarritoItem x : carrito) {
			if (x.getIdProd() == obj.getIdProd()) {
				x.setCantidad(x.getCantidad()+obj.getCantidad());
				encontro=true;
				System.out.println("----------------------------------------------REPETIDO-------------------------------------------");
				break;
			}
		}
		if(encontro == false) {
			carrito.add(obj);
		} 
		System.out.println("----------------------------------------------ENTRO-------------------------------------------");		
		return carrito;
	}
	
	@RequestMapping("/listaCarrito")
	@ResponseBody
	public List<CarritoItem> listaCarrito() {
		return carrito;
	}
	
	@RequestMapping("/eliminaCarritoItem")
	@ResponseBody
	public List<CarritoItem> eliminar(int idProd) {
		for (CarritoItem x : carrito) {
			if (x.getIdProd() == idProd) {
				carrito.remove(x);
				break;
			}
		}
		return carrito;
	}
	
	@RequestMapping("/registraBoleta")
	public String registra(HttpSession session, RedirectAttributes redirectAttributes) {
		System.out.println(((Usuario)session.getAttribute("objUsuario")).getNombre());
		Mensaje mensaje = new Mensaje();
		List<DetalleBoleta> detalles = new ArrayList<DetalleBoleta>();
		double total = 0;
		/*
		List<Boleta> listaBoleta = boletaServicio.listaBoletas();
		System.out.println(listaBoleta.get(0).getNumBoleta());
		List<String> listaNumBoleta = new ArrayList<String>();
		
		
		for (Boleta b : listaBoleta) {
			listaNumBoleta.add(b.getNumBoleta());
		}
		
		System.out.println(listaNumBoleta.get(0)+">>>>>>>>>>>>>>>>>>>>>>>>>");
		
		//java.util.Collections.sort(listaNumBoleta);
		*/
		/*
		String numBoleta = listaNumBoleta.get(listaNumBoleta.size()-1);
		numBoleta = numBoleta.substring(1, 4);
		int num = Integer.parseInt(numBoleta);
		num = num + 1;
		numBoleta = "B" + StringUtils.repeat("0", 4-String.valueOf(num).length()) + num;
		*/
		for (CarritoItem carritoItem : carrito) {
			DetalleBoletaPK pk = new DetalleBoletaPK();
			pk.setIdProd(carritoItem.getIdProd());
			System.out.println(carritoItem.getIdProd()+">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
			//pk.setNumBoleta("B0005");
			//System.out.println(numBoleta);
			DetalleBoleta psb = new DetalleBoleta();
			psb.setPrecio(carritoItem.getPrecio());
			psb.setCantidad(carritoItem.getCantidad());
			System.out.println(pk.hashCode()+"HASHCODE>>>>>>>>>>>>>>>>>>");
			psb.setDetalleBoletaPK(pk);
			detalles.add(psb);
			total += carritoItem.getCantidad()*carritoItem.getPrecio();
			System.out.println(psb.getDetalleBoletaPK());
			System.out.println(pk);
		}
		
		
		System.out.println("A>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		
		Boleta obj = new Boleta();
		obj.setUsuario((Usuario)session.getAttribute("objUsuario"));
		//obj.setNumBoleta("B0005");
		obj.setDetallesBoleta(detalles);
		obj.setFecha(new Date());
		obj.setEstado(1);
		obj.setTotal(total);
		
		System.out.println("B>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		
		Boleta objBoleta = boletaServicio.insertaBoleta(obj);
		String salida = "-1";
		System.out.println("C>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		/*
		if (objBoleta != null) {
			salida = "Se generó la boleta con código N° : " + objBoleta.getNumBoleta() + "<br><br>";
			salida += "Cliente: " + objBoleta.getUsuario().getNombre() + "<br><br>";
			salida += "<table class=\"table\"><tr><td>Producto</td><td>Precio</td><td>Cantidad</td><td>Subtotal</td></tr>";
			double monto = 0;
			
			for (CarritoItem x : carrito) {
				salida += "<tr><td>" + x.getNombre() + "</td><td>" + x.getPrecio() + "</td><td>" + x.getCantidad()
						+ "</td><td>" + x.getTotalParcial() + "</td></tr>";
				monto += x.getCantidad() * x.getPrecio();
			}
			
			salida += "</table><br>";
			salida += "Monto a pagar : " + total;
			carrito.clear();
		}
		*/
		carrito.clear();
		mensaje.setTexto(salida);
		redirectAttributes.addFlashAttribute("bol", objBoleta);
		
		return "redirect:/index";
	}
	
	
}

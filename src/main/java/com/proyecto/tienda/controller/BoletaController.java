package com.proyecto.tienda.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@ResponseBody
	public Mensaje registra(Usuario objUsuario) {
		Mensaje mensaje = new Mensaje();
		List<DetalleBoleta> detalles = new ArrayList<DetalleBoleta>();
		
		for (CarritoItem carritoItem : carrito) {
			DetalleBoletaPK pk = new DetalleBoletaPK();
			pk.setIdProd(carritoItem.getIdProd());
			//pk.setNumBoleta(****);
			DetalleBoleta psb = new DetalleBoleta();
			psb.setPrecio(carritoItem.getPrecio());
			psb.setCantidad(carritoItem.getCantidad());
			psb.setDetalleBoletaPK(pk);
			detalles.add(psb);
		}
		
		Boleta obj = new Boleta();
		obj.setUsuario(objUsuario);
		obj.setDetallesBoleta(detalles);
		
		Boleta objBoleta = boletaServicio.insertaBoleta(obj);
		String salida = "-1";
		
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
			salida += "Monto a pagar : " + monto;
			carrito.clear();
		}
		
		mensaje.setTexto(salida);
		return mensaje;
	}
	
	
}

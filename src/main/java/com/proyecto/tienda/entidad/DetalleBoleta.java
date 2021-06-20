package com.proyecto.tienda.entidad;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_detalle_boleta")
public class DetalleBoleta {
	
	@EmbeddedId
	private DetalleBoletaPK detalleBoletaPK;
	
	@Column(precision = 22)
	private double precio;
	
	@Column(length = 10)
	private int cantidad;
	
	@ManyToOne(optional = false)
	@JoinColumn(name = "numBoleta", nullable = false, insertable = false, updatable = false)
	private Boleta boleta;
	
	@ManyToOne(optional = false)
	@JoinColumn(name = "idProd", nullable = false, insertable = false, updatable = false)
	private Producto producto;

	public DetalleBoletaPK getDetalleBoletaPK() {
		return detalleBoletaPK;
	}

	public void setDetalleBoletaPK(DetalleBoletaPK detalleBoletaPK) {
		this.detalleBoletaPK = detalleBoletaPK;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Boleta getBoleta() {
		return boleta;
	}

	public void setBoleta(Boleta boleta) {
		this.boleta = boleta;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	
	
	
}

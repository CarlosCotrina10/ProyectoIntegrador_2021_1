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
	private double preciovta;
	
	@Column(length = 10)
	private int cantidad;
	
	@ManyToOne
	@JoinColumn(name = "numBoleta", nullable = true, insertable = false, updatable = false)
	private Boleta boleta;
	
	@ManyToOne
	@JoinColumn(name = "idprod", nullable = true, insertable = false, updatable = false)
	private Producto producto;

	public DetalleBoletaPK getDetalleBoletaPK() {
		return detalleBoletaPK;
	}

	public void setDetalleBoletaPK(DetalleBoletaPK detalleBoletaPK) {
		this.detalleBoletaPK = detalleBoletaPK;
	}

	public double getPrecio() {
		return preciovta;
	}

	public void setPrecio(double precio) {
		this.preciovta = precio;
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

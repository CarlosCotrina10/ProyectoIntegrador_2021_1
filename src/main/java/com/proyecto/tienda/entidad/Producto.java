package com.proyecto.tienda.entidad;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_productos")
public class Producto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idProd;
	private String nomProd;
	private String descripcion;
	private int stock;
	private double precio;
	
	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idCategoria")
	private Categoria categoria;
	
	private int estado;
	private String urlImg;

	public int getIdProd() {
		return idProd;
	}

	public void setIdProd(int idProd) {
		this.idProd = idProd;
	}

	public String getNomProd() {
		return nomProd;
	}

	public void setNomProd(String nomProd) {
		this.nomProd = nomProd;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}	
	
	public String getUrlImg() {
		return urlImg;
	}

	public void setUrlImg(String urlImg) {
		this.urlImg = urlImg;
	}

	@Override
	public String toString() {
		return "Producto [idProd=" + idProd + ", nomProd=" + nomProd + ", descripcion=" + descripcion + ", stock="
				+ stock + ", precio=" + precio + ", categoria=" + categoria + ", estado=" + estado + ", urlImg="
				+ urlImg + "]";
	}
	

}
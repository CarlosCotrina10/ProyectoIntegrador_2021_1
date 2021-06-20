package com.proyecto.tienda.entidad;

public class CarritoItem {

	private int idProd;
	private String nombre;
	private double precio;
	private int cantidad;
	private double totalParcial;
	
	public int getIdProd() {
		return idProd;
	}
	public void setIdProd(int idProd) {
		this.idProd = idProd;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
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
	public double getTotalParcial() {
		totalParcial = precio * cantidad;
		return totalParcial;
	}
		
}

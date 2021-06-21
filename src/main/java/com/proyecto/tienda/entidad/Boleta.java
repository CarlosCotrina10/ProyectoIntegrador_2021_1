package com.proyecto.tienda.entidad;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_boleta")
public class Boleta {
	
	@Id
	//
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	//
	@Column(name = "numBoleta")
	private int numBoleta;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "codUsuario", nullable = false)
	private Usuario usuario;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date fecha;
	
	private double total;
	
	private int estado;
	
	@JsonBackReference
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "boleta")
	private List<DetalleBoleta> detallesBoleta;
	
	
	public List<DetalleBoleta> getDetallesBoleta() {
		return detallesBoleta;
	}

	public void setDetallesBoleta(List<DetalleBoleta> detallesBoleta) {
		this.detallesBoleta = detallesBoleta;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

	public int getNumBoleta() {
		return numBoleta;
	}

	public void setNumBoleta(int numBoleta) {
		this.numBoleta = numBoleta;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	
}

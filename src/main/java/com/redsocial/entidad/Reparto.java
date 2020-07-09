package com.redsocial.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "reparto")
public class Reparto {
     
	@Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name = "idreparto")
	private int idReparto;
	
	@Column(name = "codrepartidor")
	private String codrepartidor;
	
	@Column(name = "direccion")
	private String direccion;
	 
	@Column(name = "nombrecliente")
	private String nombrecliente;
	
	@Column(name = "nombretienda")
	private String nombretienda;
	
	@Column(name = "total")
	private int total;
	
	@ManyToOne(fetch =  FetchType.LAZY)
    @JoinColumn(name = "idturno")
	private Turno turno;
	
	
	public int getIdReparto() {
		return idReparto;
	}
	public void setIdReparto(int idReparto) {
		this.idReparto = idReparto;
	}
	public String getCodrepartidor() {
		return codrepartidor;
	}
	public void setCodrepartidor(String codrepartidor) {
		this.codrepartidor = codrepartidor;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getNombrecliente() {
		return nombrecliente;
	}
	public void setNombrecliente(String nombrecliente) {
		this.nombrecliente = nombrecliente;
	}
	public String getNombretienda() {
		return nombretienda;
	}
	public void setNombretienda(String nombretienda) {
		this.nombretienda = nombretienda;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Turno getTurno() {
		return turno;
	}
	public void setTurno(Turno turno) {
		this.turno = turno;
	}
}

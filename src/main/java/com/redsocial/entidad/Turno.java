package com.redsocial.entidad;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table (name = "turno")
public class Turno {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column(name = "idturno")
	private int idTurno;
	
	@Column(name = "nombre")
	private String nombre;
	
	@OneToMany(mappedBy = "turno")
	private List<Reparto> repartos;
	
	public int getIdTurno() {
		return idTurno;
	}
	public void setIdTurno(int idTurno) {
		this.idTurno = idTurno;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}

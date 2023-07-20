package com.overcome.test.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity(name = "ticket")
public class Ticket {

	@Id
	private int id;
	private String titulo;
	private String fecha;
	private String creadorResponsable;
	private String equipoResponsable;
	private String tipoIncidencia;
	private String gravedadIncidencia;
	private String versionSoftware;
	private String descripcionProblema;
	private String archivos;
	private String estado;
	private Boolean archivado;
	
	public Ticket() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Ticket(int id, String titulo, String creadorResponsable, String tipoIncidencia, String gravedadIncidencia,
			String descripcionProblema, String estado) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.creadorResponsable = creadorResponsable;
		this.tipoIncidencia = tipoIncidencia;
		this.gravedadIncidencia = gravedadIncidencia;
		this.descripcionProblema = descripcionProblema;
		this.estado = estado;
	}

	//GETTERS & SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getCreadorResponsable() {
		return creadorResponsable;
	}

	public void setCreadorResponsable(String creadorResponsable) {
		this.creadorResponsable = creadorResponsable;
	}

	public String getEquipoResponsable() {
		return equipoResponsable;
	}

	public void setEquipoResponsable(String equipoResponsable) {
		this.equipoResponsable = equipoResponsable;
	}

	public String getTipoIncidencia() {
		return tipoIncidencia;
	}

	public void setTipoIncidencia(String tipoIncidencia) {
		this.tipoIncidencia = tipoIncidencia;
	}

	public String getGravedadIncidencia() {
		return gravedadIncidencia;
	}

	public void setGravedadIncidencia(String gravedadIncidencia) {
		this.gravedadIncidencia = gravedadIncidencia;
	}

	public String getVersionSoftware() {
		return versionSoftware;
	}

	public void setVersionSoftware(String versionSoftware) {
		this.versionSoftware = versionSoftware;
	}

	public String getDescripcionProblema() {
		return descripcionProblema;
	}

	public void setDescripcionProblema(String descripcionProblema) {
		this.descripcionProblema = descripcionProblema;
	}

	public String getArchivos() {
		return archivos;
	}

	public void setArchivos(String archivos) {
		this.archivos = archivos;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Boolean getArchivado() {
		return archivado;
	}

	public void setArchivado(Boolean archivado) {
		this.archivado = archivado;
	}
}

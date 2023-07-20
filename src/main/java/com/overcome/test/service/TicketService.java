package com.overcome.test.service;

import java.util.List;

import com.overcome.test.entity.Ticket;

public interface TicketService {

	public void save(Ticket ticket);
	
	public List<Ticket> getAllByEstado(String estado);
	
	public List<Ticket> getAll();
	
	public void archivar(int id);
	
	public Ticket getByID(int id);
	
	public List<Ticket> getArchivado();
}

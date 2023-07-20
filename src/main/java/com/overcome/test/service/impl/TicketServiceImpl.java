package com.overcome.test.service.impl;

import java.util.List;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.cmd.Query;
import com.overcome.test.entity.Ticket;
import com.overcome.test.service.TicketService;

public class TicketServiceImpl implements TicketService {

	Objectify ofy = ObjectifyService.ofy();
	
	@Override
	public void save(Ticket ticket) {
		
		ofy.save().entity(ticket).now();
	}

	@Override
	public List<Ticket> getAllByEstado(String estado) {
		
		Query<Ticket> query = ofy.load().type(Ticket.class).filter("estado", estado);
		List<Ticket> tickets = query.list();
		
		return tickets;
	}

	@Override
	public List<Ticket> getAll() {

		Query<Ticket> query = ofy.load().type(Ticket.class);
		List<Ticket> tickets = query.list();
		
		return tickets;
	}

	@Override
	public void archivar(int id) {
		
		Ticket ticket = ofy.load().type(Ticket.class).id(id).now();
		ticket.setArchivado(true);
		save(ticket);
	}

	@Override
	public Ticket getByID(int id) {
		
		Ticket ticket = ofy.load().type(Ticket.class).id(id).now();
		
		return ticket;
	}

	@Override
	public List<Ticket> getArchivado() {
		
		Query<Ticket> query = ofy.load().type(Ticket.class).filter("archivado" , true);
		List<Ticket> tickets = query.list();
		
		return tickets;
	}

}

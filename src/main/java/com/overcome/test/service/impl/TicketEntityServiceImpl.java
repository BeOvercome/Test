package com.overcome.test.service.impl;

import com.overcome.dao.ObjectifyDao;
import com.overcome.test.entity.TicketEntity;
import com.overcome.test.service.TicketEntityService;
import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class TicketEntityServiceImpl implements TicketEntityService{
	 private final Objectify objectify;

	    @Autowired
	    public TicketEntityServiceImpl(Objectify objectify) {
	        this.objectify = objectify;
	    }

	@Override
	public void setObjectifyDao(ObjectifyDao<TicketEntity> var1) {

	}

	@Override
	public TicketEntity guardar(TicketEntity entity) {
		
		 objectify.save().entity(entity).now();

	        return entity;
	}

	@Override
	public TicketEntity getById(Long id) {
		Objectify ofy = ObjectifyService.ofy();
        return ofy.load().type(TicketEntity.class).id(id).now();

	}

	@Override
	public void delete(Long id) {
		Objectify ofy = ObjectifyService.ofy();
        ofy.delete().type(TicketEntity.class).id(id).now();
		
	}

	@Override
	public void archivar(Long id) {
		Objectify ofy = ObjectifyService.ofy();
		TicketEntity entity = ofy.load().type(TicketEntity.class).id(id).now();
		entity.setArchivar(true);
		entity.setEstado("Archivar");
		objectify.save().entity(entity).now();
	}

	@Override
	public List<TicketEntity> getAll() {
		 Objectify ofy = ObjectifyService.ofy();
		return ofy.load().type(TicketEntity.class).list().stream().filter(ticket -> !Objects.equals(ticket.getEstado(), "Archivar")).collect(Collectors.toList());
		}

	@Override
	public List<TicketEntity> getAllBy(String type) {
		Objectify ofy = ObjectifyService.ofy();
		return ofy.load().type(TicketEntity.class).list().stream().filter(ticket -> ticket.getEstado().equals(type)).collect(Collectors.toList());
	}

}

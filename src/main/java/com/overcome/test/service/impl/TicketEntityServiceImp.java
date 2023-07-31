package com.overcome.test.service.impl;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.overcome.test.entity.TicketEntity;

public class TicketEntityServiceImp extends BaseEntityServiceImpl {

	public void save(TicketEntity entity) {
		
		Objectify objectify = ObjectifyService.ofy();
		objectify.load().type(TicketEntity.class).id(entity.getId()).now();
		objectify.save();
	}
	
}

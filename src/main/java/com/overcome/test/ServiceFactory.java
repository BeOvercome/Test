package com.overcome.test;

import com.overcome.test.service.ExampleEntityService;
import com.overcome.test.service.TicketEntityService;
import com.overcome.test.service.UserEntityService;

public class ServiceFactory {

	protected static volatile ServiceFactory instance;
	protected ServiceFactory() {}
	
	public static ServiceFactory getInstance() {
		if (instance == null) {
			synchronized (ServiceFactory.class) {
				instance = new ServiceFactory();
			}
		}
		return instance;
	}
	
	private ExampleEntityService exampleEntityService;
	
	public void setExampleEntityService(ExampleEntityService exampleEntityService) {
		this.exampleEntityService = exampleEntityService;
	}
	public ExampleEntityService getExampleEntityService() {
		return exampleEntityService;
	}
	
	private TicketEntityService ticketEntityService;
	
	public void setTicketEntityService(TicketEntityService ticketEntityService) {
		this.ticketEntityService = ticketEntityService;
	}
	public TicketEntityService getTicketEntityService() {
		return ticketEntityService;
	}


	private UserEntityService userEntityService;
	
	public void setUserEntityService(UserEntityService userEntityService) {
		this.userEntityService = userEntityService;
	}
	public UserEntityService getUserEntityService() {
		return userEntityService;
	}
}

package com.overcome.test.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;

import com.overcome.test.entity.TicketEntity;
import com.overcome.test.service.TicketEntityService;

@Controller
@RequestMapping("/tickets")
public class TicketController{
	@Autowired
	private TicketEntityService ticket_service;
	
	
	@RequestMapping("/")
	public ModelAndView showTickets() {
		return new ModelAndView("page.panel");
	}
	
	@RequestMapping("/new")
	public ModelAndView newTicket() {
		return new ModelAndView("page.new");
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveTicket(@ModelAttribute TicketEntity ticket) {
		Date date = new Date();
		ticket.setDate(date);
		ticket_service.save(ticket);
		return "redirect:/panel";
	}
}
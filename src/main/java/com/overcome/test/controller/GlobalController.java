package com.overcome.test.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.overcome.test.entity.TicketEntity;
import com.overcome.test.entity.UserEntity;
import com.overcome.test.service.TicketEntityService;
import com.overcome.test.service.UserEntityService;


import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
@Controller 
public class GlobalController {

	@Autowired
	private TicketEntityService ticketEntityService;
	
	@Autowired
	private UserEntityService userEntityService;
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public ModelAndView showLogin() {
		return new ModelAndView("page.login");
	}
	

	@RequestMapping(value ="/panel", method = RequestMethod.GET)
	public ModelAndView showPanel(Model model) throws Exception{
		model.addAttribute("items", ticketEntityService.getAll());
		model.addAttribute("type", "Todos");
		return new ModelAndView("page.panel");
	}

	@RequestMapping(value ="/nuevo", method = RequestMethod.GET)
	public ModelAndView showNuevos(Model model) throws Exception{
		model.addAttribute("items", ticketEntityService.getAllBy("Nuevo"));
		model.addAttribute("type", "Nuevo");
		return new ModelAndView("page.panel");
	}

	@RequestMapping(value ="/enProceso", method = RequestMethod.GET)
	public ModelAndView showEnProceso(Model model) throws Exception{
		model.addAttribute("items", ticketEntityService.getAllBy("EnProceso"));
		model.addAttribute("type", "En Proceso");
		return new ModelAndView("page.panel");
	}

	@RequestMapping(value ="/atendido", method = RequestMethod.GET)
	public ModelAndView showAtendido(Model model) throws Exception{
		model.addAttribute("items", ticketEntityService.getAllBy("Atendido"));
		model.addAttribute("type", "Atendido");
		return new ModelAndView("page.panel");
	}
	@RequestMapping(value ="/archivados", method = RequestMethod.GET)
	public ModelAndView showArchivados(Model model) throws Exception{
		model.addAttribute("items", ticketEntityService.getAllBy("Archivar"));
		model.addAttribute("type", "Archivado");
		return new ModelAndView("page.panel");
	}
	
	@RequestMapping(value ="/nuevoTicket", method = RequestMethod.GET)
	public ModelAndView showNuevoTicket() {
		return new ModelAndView("page.nuevoTicket");
	}
	
	
	@RequestMapping(value ="/nuevoTicket", method = RequestMethod.POST)
	public String saveNuevoTicket(@ModelAttribute TicketEntity ticket) {
		String formattedDate = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		ticket.setFecha(formattedDate);
		ticket.setArchivar(false);
		ticketEntityService.guardar(ticket);
		return "redirect:/panel";
	}
	
	@RequestMapping(value ="/eliminar", method = RequestMethod.GET)
	public String deleteTicket(@RequestParam("id") Long id) {
		ticketEntityService.archivar(id);
		return "redirect:/panel";
	}
	
}

package com.overcome.test.controller;

import java.util.List;

import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.appengine.repackaged.org.joda.time.LocalDate;
import com.overcome.test.entity.Ticket;
import com.overcome.test.service.impl.TicketServiceImpl;

@Controller
@RequestMapping("/ticket")
public class TicketController {

	@Autowired
	private TicketServiceImpl service;
	
	@GetMapping("/redirigir/new")
	public String redirigirnew() {
		
		return "save-view";
	}
	
	@GetMapping("/redirigir/info/{id}")
	public String redirigirinfo(@PathVariable("id") int id, Model model) {
		
		Ticket ticket = service.getByID(id);
		
		if (ticket == null) {
			
			String dialogScript = "alert('No se ecuentra un ticket con ese ID.');";
			model.addAttribute("dialogScript", dialogScript);
			
			return "getall-view";
		}
		
		model.addAttribute("ticket", ticket);

		return "info-view";
	}
	
	@PostMapping("/save")
	public String save(@RequestBody Ticket ticket, Model model) {
		
		Ticket newticket = new Ticket();
		newticket.setTitulo(ticket.getTitulo());
		newticket.setFecha(LocalDate.now().toString());
		newticket.setCreadorResponsable(ticket.getCreadorResponsable());
		newticket.setEquipoResponsable(ticket.getEquipoResponsable());
		newticket.setTipoIncidencia(ticket.getTipoIncidencia());
		newticket.setGravedadIncidencia(ticket.getGravedadIncidencia());
		newticket.setVersionSoftware(ticket.getVersionSoftware());
		newticket.setDescripcionProblema(ticket.getDescripcionProblema());
		newticket.setArchivos(ticket.getArchivos());
		newticket.setEstado(ticket.getEstado());
		newticket.setArchivado(ticket.getArchivado());
		
		service.save(newticket);
		
		return	"getall-view";
	}
	
	@GetMapping("/getbyestado")
	public String getByEstado(@RequestParam("estado") String estado, Model model) {
		
		List<Ticket> tickets = service.getAllByEstado(estado);
		model.addAttribute("tickets",tickets);
		
		return	"getall-view";
	}
	
	@GetMapping("/all")
	public String getAll(Model model) {
		
		List<Ticket> tickets = service.getAll();
		model.addAttribute("tickets",tickets);
		
		return	"getall-view";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") int id, Model model) {
		
		Ticket ticket = service.getByID(id);
		
		if (ticket == null) {
			
			String dialogScript = "alert('No se ecuentra un ticket con ese ID.');";
			model.addAttribute("dialogScript", dialogScript);
			
			return "getall-view";
		}
		
		model.addAttribute("ticket", ticket);
		
		return "edit-view";
	}
	
	@PostMapping("/edit/{id}/save")
	public String saveEdited(@PathVariable("id") int id, @ModelAttribute("ticket") Ticket editedTicket ) {
		
		Ticket ticket = service.getByID(id);
		
		if (ticket == null) {
			
			throw new ResourceNotFoundException("Example not found with id: " + id);
		}
		
		ticket.setTitulo(editedTicket.getTitulo());
		ticket.setFecha(editedTicket.getFecha());
		ticket.setCreadorResponsable(editedTicket.getCreadorResponsable());
		ticket.setEquipoResponsable(editedTicket.getEquipoResponsable());
		ticket.setTipoIncidencia(editedTicket.getTipoIncidencia());
		ticket.setGravedadIncidencia(editedTicket.getGravedadIncidencia());
		ticket.setVersionSoftware(editedTicket.getVersionSoftware());
		ticket.setDescripcionProblema(editedTicket.getDescripcionProblema());
		ticket.setArchivos(editedTicket.getArchivos());
		ticket.setArchivado(editedTicket.getArchivado());
		
		service.save(ticket);
		
		return "getall-view";
	}
	
	@GetMapping("/archivar/{id}")
	public String archivar(@PathVariable("id") int id, Model model) {
		
		service.archivar(id);
		
		String dialogScript = "alert('El Ticket se archivo con exito.');";
		model.addAttribute("dialogScript", dialogScript);
		
		return "getall-view";
	}
	
	@GetMapping("/archivados")
	public String getArchivado(Model model) {
		
		
		List<Ticket> tickets = service.getArchivado();
		model.addAttribute("tickets",tickets);
		
		return	"getall-view";
	}
}

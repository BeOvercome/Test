package com.overcome.test.controller;

import com.overcome.test.entity.TicketEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.overcome.test.ServiceFactory;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/ticket")
public class TicketController {

    @GetMapping("/listar")
    public ModelAndView listar(@RequestParam(required = false) String estado) {
        List<TicketEntity> tickets = ServiceFactory.getInstance().getTicketService().listar(estado);
        ModelAndView modelAndView = new ModelAndView("page.ticket_lista");
        modelAndView.addObject("tickets", tickets);
        return modelAndView;
    }

    @PostMapping("/registrar")
    public ModelAndView registrar(@ModelAttribute("ticketEntity") TicketEntity ticketEntity) {
        ServiceFactory.getInstance().getTicketService().registrar(ticketEntity);
        return new ModelAndView("redirect:/ticket/listar");
    }

    @PostMapping("/modificar/{id}")
    public ModelAndView modificar(@PathVariable("id") Long id, @ModelAttribute("ticketEntity") TicketEntity ticketEntity) {
        ServiceFactory.getInstance().getTicketService().modificar(id, ticketEntity);
        return new ModelAndView("redirect:/ticket/listar");
    }

    @GetMapping("/archivar/{id}")
    public ModelAndView archivar(@PathVariable("id") Long id) {
        ServiceFactory.getInstance().getTicketService().archivar(id);
        return new ModelAndView("redirect:/ticket/listar");
    }
}

package com.overcome.test.service;

import com.overcome.service.EntityService;
import com.overcome.test.entity.TicketEntity;

import java.util.List;

public interface TicketService extends EntityService<TicketEntity> {
    List<TicketEntity> listar(String estado);
    TicketEntity consultar(Long id);
    void registrar(TicketEntity ticketEntity);
    void modificar(Long id, TicketEntity ticketEntity);
    void archivar(Long id);
    void guardar(TicketEntity ticketEntity);
}

package com.overcome.test.service.impl;

import com.googlecode.objectify.cmd.Query;
import com.overcome.service.impl.EntityServiceImpl;
import com.overcome.test.entity.TicketEntity;
import com.overcome.test.service.TicketService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.Date;
import java.util.List;

public class TicketServiceImpl extends EntityServiceImpl<TicketEntity> implements TicketService {

    @Override
    public List<TicketEntity> listar(String estado) {
        Query<TicketEntity> query = ofy().load().type(TicketEntity.class);
        if (estado != null) {
            System.out.println(estado);
            if (estado.trim().equalsIgnoreCase("nuevos")) {
                query.filter("estado", "Nuevo");
            } else if (estado.trim().equalsIgnoreCase("enProceso")) {
                query.filter("estado", "En Proceso");
            } else if (estado.trim().equalsIgnoreCase("atendidos")) {
                query.filter("estado", "Atendido");
            } else if (estado.trim().equalsIgnoreCase("archivados")) {
                query.filter("estado", "Archivado");
            }
        }
        List<TicketEntity> ticketEntities = query.list();
        return ticketEntities;
    }

    @Override
    public TicketEntity consultar(Long id) {
        TicketEntity ticketEntity = ofy().load().type(TicketEntity.class).id(id).now();
        return ticketEntity;
    }

    @Override
    public void registrar(TicketEntity ticketEntity) {
        try {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String nombreResponsable = authentication.getName();

            ticketEntity.setNombreResponsable(nombreResponsable);
            ticketEntity.setEstado("Nuevo");
            ticketEntity.setFechaRegistro(new Date());
            ofy().save().entity(ticketEntity).now();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void modificar(Long id, TicketEntity ticketEntity) {
        try {
            TicketEntity ticketEntity1 = ofy().load().type(TicketEntity.class).id(id).now();
            if (ticketEntity1 != null) {
                ticketEntity1.setTitulo(ticketEntity.getTitulo());
                ticketEntity1.setEquipoResponsable(ticketEntity.getEquipoResponsable());
                ticketEntity1.setTipoIncidencia(ticketEntity.getTipoIncidencia());
                ticketEntity1.setGravedadIncidencia(ticketEntity.getGravedadIncidencia());
                ticketEntity1.setVersionSoftware(ticketEntity.getVersionSoftware());
                ticketEntity1.setDescripcion(ticketEntity.getDescripcion());
                ticketEntity1.setEstado(ticketEntity.getEstado());
                ticketEntity1.setArchivos(ticketEntity.getArchivos());
                guardar(ticketEntity1);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void archivar(Long id) {
        TicketEntity ticketEntity = ofy().load().type(TicketEntity.class).id(id).now();
        if (ticketEntity != null) {
            ticketEntity.setEstado("Archivado");
            guardar(ticketEntity);
        }
    }

    @Override
    public void guardar(TicketEntity ticketEntity) {
        try {
            ofy().save().entity(ticketEntity).now();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}

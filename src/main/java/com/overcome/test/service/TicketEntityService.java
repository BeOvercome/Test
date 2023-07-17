package com.overcome.test.service;

import com.overcome.dao.ObjectifyDao;
import com.overcome.test.entity.TicketEntity;
import java.util.List;
public interface TicketEntityService {
    void setObjectifyDao(ObjectifyDao<TicketEntity> var1);
	TicketEntity guardar(TicketEntity entity);
	TicketEntity getById(Long id);
    List<TicketEntity> getAllBy(String type);
    List<TicketEntity> getAll();
    void delete(Long id);
    void archivar(Long id);
}

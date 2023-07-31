<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<body>
    <header class="bg-dark text-white text-center py-4">
        <h1>Agregar Nuevo Ticket</h1>
    </header>

    <main class="container mt-4">
        <form action="/nuevoTicket" method="post">
            <div class="mb-3">
                <label for="title" class="form-label text-white fs-5 mb-2">Título</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Título del ticket" required>
            </div>
            
            <div class="mb-3">
                <label for="team" class="form-label text-white fs-5 mb-2">Departamento</label>
                <select name="team" id="team" required>
  					<option value="0">Soporte</option>
  					<option value="1">Desarrollo</option>
  					<option value="2">Atencion a clientes</option>
				</select>
            </div>
            
            <div class="mb-3">
                <label for="type" class="form-label text-white fs-5 mb-2">Tipo de incidencia</label>
                <select name="type" id="type" required>
  					<option value="0">Error</option>
  					<option value="1">Caracteristica</option>
				</select>
            </div>
            
            <div class="mb-3">
                <label for="sverity" class="form-label text-white fs-5 mb-2">Urgencia</label>
                <select name="sverity" id="sverity" required>
  					<option value="0">Baja</option>
  					<option value="1">Media</option>
  					<option value="1">Alta</option>
				</select>
            </div>
            
            <div class="mb-3">
                <label for="sotware_version" class="form-label text-white fs-5 mb-2">Version</label>
                <input type="text" class="form-control" id="sotware_version" name="sotware_version" placeholder="Version del software" required>
            </div>
            
            <div class="mb-3">
                <label for="description" class="form-label text-white fs-5 mb-2">Descripción</label>
                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Descripción del ticket" required></textarea>
            </div>
            
            <div class="mb-3">
                <label for="status" class="form-label text-white fs-5 mb-2">Estado</label>
                <select class="form-control" id="status" name="status" required>
                    <option value="0">Nuevo</option>
                    <option value="1">Atendido</option>
                    <option value="2">En Proceso</option>
                    <option value="3">Archivado</option>
                </select>
            </div>
            
            <button type="submit" class="btn btn-primary" aria-label="Guardar Ticket">Guardar</button>
            <a href="#" class="btn btn-secondary" aria-label="Cancelar">Cancelar</a>
        </form>
    </main>
</body>
</html>
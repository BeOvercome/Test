<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<body>
<header class="bg-dark text-white text-center py-4">
  <h1>Agregar Nuevo Ticket</h1>
</header>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <ul class="navbar-nav me-auto">
      <li class="nav-item">
        <a class="nav-link" href="/panel">Ver Todos los Tickets</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ver Mis Tickets</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Archivados</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Nuevo Ticket</a>
      </li>
    </ul>
  </div>
</nav>

<main class="container mt-4">
  <form action="/nuevoTicket" method="post">
    <div class="mb-3">
      <label for="titulo" class="form-label text-white fs-5 mb-2">Título</label>
      <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Ingrese el título del ticket" required>
    </div>
    <div class="mb-3">
      <label for="descripcion" class="form-label text-white fs-5 mb-2">Descripción</label>
      <textarea class="form-control" id="descripcion" name="descripcion" rows="4" placeholder="Ingrese la descripción del ticket" required></textarea>
    </div>
    <div class="mb-3">
      <label for="titulo" class="form-label text-white fs-5 mb-2">Nombre</label>
      <input type="text" class="form-control" id="nombreCreador" name="nombreCreador" placeholder="Ingrese su nombre" required>
    </div>
    <div class="mb-3">
      <label for="titulo" class="form-label text-white fs-5 mb-2">Version</label>
      <input type="text" class="form-control" id="titulo" name="version" placeholder="Ingrese la version del ticket">
    </div>
    <div class="mb-3">
      <label for="gravedad" class="form-label text-white fs-5 mb-2">Gravedad</label>
      <select class="form-control" id="gravedad" name="gravedad" required>
        <option value="high">High</option>
        <option value="medium">Medium</option>
        <option value="low">Low</option>
      </select>
    </div>
    <div class="mb-3">
      <label for="equipoResponsable" class="form-label text-white fs-5 mb-2">Equipo Responsable</label>
      <select class="form-control" id="equipoResponsable" name="equipoResponsable">
        <option value="Soporte">Soporte</option>
        <option value="Desarrollo">Desarrollo</option>
        <option value="AtencionCliente">Atención a Clientes</option>
      </select>
    </div>
    <div class="mb-3">
      <label for="tipoIncidencia" class="form-label text-white fs-5 mb-2">Tipo de Incidencia</label>
      <select class="form-control" id="tipoIncidencia" name="incidencia" required>
        <option value="Bug">Bug</option>
        <option value="Feature">Feature</option>
      </select>
    </div>
    <div class="mb-3">
      <label for="estado" class="form-label text-white fs-5 mb-2">Estado</label>
      <select class="form-control" id="estado" name="estado" required>
        <option value="Nuevo">Nuevo</option>
        <option value="Atendido">Atendido</option>
        <option value="EnProceso">En Proceso</option>
        <option value="Archivado">Archivado</option>
      </select>
    </div>
    <button type="submit" class="btn btn-primary" aria-label="Guardar Ticket">Guardar Ticket</button>
    <a href="#" class="btn btn-secondary" aria-label="Cancelar">Cancelar</a>
  </form>
</main>

<footer class="bg-dark text-white text-center py-3 mt-4">
  <p>Derechos Reservados &copy; 2023 | Panel de Administración de Tickets</p>
</footer>

<!-- Agrega la siguiente línea para utilizar Bootstrap JS y jQuery -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

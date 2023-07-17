<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

<body>
    <header class="bg-dark text-white text-center py-4">
        <h1>Panel de Administración de Tickets de Soporte</h1>
            <h1>Tamaño de la lista: ${items.size()}</h1>
            
        
    </header>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <ul class="navbar-nav me-auto">
                <c:choose>
                    <c:when test="${type eq 'Todos'}">
                        <li class="nav-item active">
                            <a class="nav-link" href="/panel">Ver Todos los Tickets</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/panel">Ver Todos los Tickets</a>
                        </li>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${type eq 'Nuevo'}">
                        <li class="nav-item active">
                            <a class="nav-link" href="/nuevo">Nuevo</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/nuevo">Nuevo</a>
                        </li>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${type eq 'En Proceso'}">
                        <li class="nav-item active">
                            <a class="nav-link" href="/enProceso">En Proceso</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/enProceso">En Proceso</a>
                        </li>
                    </c:otherwise>
                </c:choose>

                <c:choose>
                    <c:when test="${type eq 'Atendido'}">
                        <li class="nav-item active">
                            <a class="nav-link" href="/atendido">Atendidos</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/atendido">Atendidos</a>
                        </li>
                    </c:otherwise>
                </c:choose>


                <c:choose>
                    <c:when test="${type eq 'Archivado'}">
                        <li class="nav-item active">
                            <a class="nav-link" href="/archivados">Archivados</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/archivados">Archivados</a>
                        </li>
                    </c:otherwise>
                </c:choose>

                <li class="nav-item">
                    <a class="nav-link" href="/nuevoTicket">Nuevo Ticket</a>
                </li>
            </ul>
        </div>
    </nav>
    <main class="container mt-4">
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Titulo</th>
                    <th>Incidencia</th>
                    <th>Gravedad</th>
                    <th>Estado</th>
                    <th>Acciones</th> <!-- Nueva columna de acciones -->
                </tr>
            </thead>
            <tbody>
                 <c:forEach var="item" items="${items}">    
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.incidencia}</td>
                    <td>${item.gravedad}</td>
                    <td>${item.estado}</td>
                    <td>
                        <!-- Iconos de editar y eliminar -->
                        <a href="#" title="Editar"><i class="bi bi-pencil"></i></a>
                        <!-- Icono de eliminar con enlace para abrir modal -->
                <a href="#" title="Eliminar" data-bs-toggle="modal" data-bs-target="#modalEliminar" data-id="${item.id}"><i class="bi bi-trash"></i></a>
                    </td>
                </tr>
                 </c:forEach>
                
               
            </tbody>
        </table>
    </main>

    <!-- Ventana modal para confirmar eliminación -->
    <div class="modal fade" id="modalEliminar" tabindex="-1" aria-labelledby="modalEliminarLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalEliminarLabel">Confirmar Eliminación</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ¿Estás seguro de que deseas eliminar este ticket?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <!-- Agregamos un enlace con la clase "delete-link" para enviar el formulario -->
                <a href="#" class="btn btn-danger delete-link">Eliminar</a>
            </div>
        </div>
    </div>
</div>
<!-- Script para enviar el formulario de eliminación al hacer clic en el enlace de eliminar -->
<script>
    // Capturamos el evento clic del enlace de eliminar
    document.querySelectorAll('a[title="Eliminar"]').forEach(function(link) {
        link.addEventListener('click', function() {
            // Obtenemos el ID del ticket del atributo data-id
            const ticketId = link.getAttribute('data-id');
            // Construimos la URL de eliminación con el ID del ticket
            const deleteUrl = '/eliminar?id=' + ticketId;
            // Asignamos la URL al botón de eliminar de la ventana modal
            document.querySelector('.btn-danger').setAttribute('href', deleteUrl);
        });
    });
</script>

    <!-- Agrega la siguiente línea para utilizar Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.15.0/font/bootstrap-icons.css">
    <!-- Agrega la siguiente línea para utilizar Bootstrap JS y jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
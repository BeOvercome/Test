<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="container">
	<div class="col text-center">
		<img src="/img/logo/logo_overcome.png" class="rounded" alt="Overcome Test" style="width: 120px;">
	</div>
	<div id="loginForm" class="card card-login mx-auto mt-1">
		<div class="card-header text-center h5">
		    <div class="row">
		        <div class="col"></div>
		        <div class="col text-center">Tickets</div>
                <div class="col text-right">
                    <sec:authentication property="principal" />
                    <a href="/login" class="btn btn-outline-primary ml-2">Salir</a>
                </div>
            </div>
		</div>
		<div class="card-body">

            <div class="row mb-2">
                <div class="col">
                    <div class="btn-group" role="group">
                        <a href="/ticket/listar" class="btn btn-outline-secondary ${param.estado == null? 'active': ''}">Todos</a>
                        <a href="/ticket/listar?estado=nuevos" class="btn btn-outline-secondary ${param.estado == 'nuevos'? 'active': ''}">Nuevos</a>
                        <a href="/ticket/listar?estado=enProceso" class="btn btn-outline-secondary ${param.estado == 'enProceso'? 'active': ''}">En proceso</a>
                        <a href="/ticket/listar?estado=atendidos" class="btn btn-outline-secondary ${param.estado == 'atendidos'? 'active': ''}">Atendidos</a>
                        <a href="/ticket/listar?estado=archivados" class="btn btn-outline-secondary ${param.estado == 'archivados'? 'active': ''}">Archivados</a>
                    </div>
                </div>
                <div class="col text-right">
                    <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target=".ticket_registro">Registrar</a>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th scope="col" width="120px">#</th>
                                <th scope="col">T&iacute;tulo</th>
                                <th scope="col">Tipo</th>
                                <th scope="col">Gravedad</th>
                                <th scope="col" width="80px"></th>
                                <th scope="col" width="80px"></th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="ticket" items="${tickets}">
                                <tr>
                                    <td scope="row" role="button" data-toggle="modal" data-target=".ticket_detalle_${ticket.id}">${ticket.id}</td>
                                    <td>${ticket.titulo}</td>
                                    <td>${ticket.tipoIncidencia}</td>
                                    <td>${ticket.gravedadIncidencia}</td>
                                    <td>
                                        <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target=".ticket_modificacion_${ticket.id}">Modificar</button>
                                    </td>
                                    <td>
                                        <a href="/ticket/archivar/${ticket.id}" class="btn btn-outline-secondary">Archivar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
		</div>
	</div>
</div>

<jsp:include page="ticket_registro.jsp"></jsp:include>

<c:forEach var="ticket" items="${tickets}">
    <c:set var="ticket" value="${ticket}" scope="request"/>
    <jsp:include page="ticket_detalle.jsp"></jsp:include>
    <jsp:include page="ticket_modificacion.jsp"></jsp:include>
</c:forEach>
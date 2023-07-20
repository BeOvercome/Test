<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<tiles:putAttribute name="body">
	<h1>TICKET</h1>
	
	<div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
	
			<form action="<tiles:url value='/login'/>" method="GET">
		        <button type="submit">Login</button>
		    </form>
		    
	</div>
	
	<div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
	
			<form action="<tiles:url value='/ticket/redirigir/new'/>" method="GET">
		        <button type="submit">Crear Ticket</button>
		    </form>
		    
	</div>
	
	 <div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
	 
		 	<form action="<tiles:url value='/ticket/all'/>" method="GET">
		        <button type="submit">Todos</button>
		    </form>
	    
	        <form action="<tiles:url value='/ticket/getbyestado'/>" method="GET">
	        	<input type="hidden" name="estado" value="nuevo">
		        <button type="submit">Nuevos</button>
		    </form>
	        
	    	<form action="<tiles:url value='/ticket/getbyestado'/>" method="GET">
	    		<input type="hidden" name="estado" value="proceso">
		        <button type="submit">En Proceso</button>
		    </form>
	        
	        <form action="<tiles:url value='/ticket/getbyestado'/>" method="GET">
	        	<input type="hidden" name="estado" value="atendido">
		        <button type="submit">Atendidos</button>
		    </form>
	        
	        <form action="<tiles:url value='/ticket/archivados'/>" method="GET">
		        <button type="submit">Archivados</button>
		    </form>
	    </div>
	
	<div>
	<table>
		<tr>
		    <th>ID</th>
		    <th>Titulo</th>
		    <th>Fecha</th>
		    <th>Creador</th>
		    <th>Equipo</th>
		    <th>Tipo Incidencia</th>
		    <th>Gravedad</th>
		    <th>Version Software</th>
		    <th>Descripcion</th>
		    <th>Archivos</th>
		    <th>Estado</th>
		    <th>Archivado</th>
		    <th>Acciones</th>
		</tr>
		
		<tr>
		 	<td>${ticket.id}</td>
			<td>${ticket.titulo}</td>
			<td>${ticket.fecha}</td>
			<td>${ticket.creadorResponsable}</td>
			<td>${ticket.equipoResponsable}</td>
			<td>${ticket.tipoIncidencia}</td>
			<td>${ticket.gravedadIncidencia}</td>
			<td>${ticket.versionSoftware}</td>
			<td>${ticket.descripcionProblema}</td>
			<td>${ticket.archivos}</td>
			<td>${ticket.estado}</td>
			<td>${ticket.archivado}</td>
			<td>
				<form method="get">
					<button type="submit" style="margin-right: 10px;" formaction="/ticket/all">Volver</button>
				</form>
		     	<form method="get">
		    		<button type="submit" style="margin-right: 10px;" formaction="/ticket/edit/${ticket.id}">Editar</button>
				</form>
				<form method="get">
		    		<button type="submit" formaction="/ticket/archivar/${ticket.id}">Archivar</button>
				</form>
	    	</td>
	    </tr>

	   </table>
	</div>
</tiles:putAttribute>
</body>
</html>
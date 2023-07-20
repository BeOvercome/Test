<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<tiles:putAttribute name="body">
	<h1>Editar Ticket</h1>
	
	<div>
	<form action="ticket/edit/${ticket.id}/save" method="post">
		<label for="titulo">Titulo:</label>
		<input type="text" id="titulo" name="titulo" value="${ticket.titulo}" required><br><br>
		
		<label for="creador">Creador:</label>
		<input type="text" id="creador" name="creador" value="${ticket.creador}" required><br><br>
		
		<label for="equipo">Equipo Responsable:</label>
			<select id="equipo" name="equipo">
			  <option value="soporte" ${ticket.equipo == 'soporte' ? 'selected' : ''}>Soporte</option>
			  <option value="desarrollo" ${ticket.equipo == 'desarrollo' ? 'selected' : ''}>Desarrollo</option>
			  <option value="atencionaclientes" ${ticket.equipo == 'atencionaclientes' ? 'selected' : ''}>Atencion a Clientes</option>
			</select>
		
		<label for="tipo">Tipo Incidencia:</label>
			<select id="tipo" name="tipo">
			  <option value="bug" ${ticket.tipo == 'bug' ? 'selected' : ''}>Bug</option>
			  <option value="feature" ${ticket.tipo == 'feature' ? 'selected' : ''}>Feature</option>
			</select>
		
		<label for="gravedad">Gravedad:</label>
			<select id="gravedad" name="gravedad">
			  <option value="high" ${ticket.gravedad == 'high' ? 'selected' : ''}>High</option>
			  <option value="medium" ${ticket.gravedad == 'medium' ? 'selected' : ''}>Medium</option>
			  <option value="low" ${ticket.gravedad == 'low' ? 'selected' : ''}>Low</option>
			</select>
		
		<label for="version">Version Software:</label>
		<input type="text" id="version" name="version" value="${ticket.version}"><br><br>
		
		<label for="descripcion">Descripcion del problema:</label>
		<input type="text" id="descripcion" name="descripcion" value="${ticket.descripcion}" required><br><br>
		
		<label for="archivos">Archivos:</label>
		<input type="text" id="archivos" name="archivos" value="${ticket.archivos}"><br><br>
		
		<label for="estado">Estado:</label>
			<select id="estado" name="estado">
			  <option value="nuevo" ${ticket.estado == 'nuevo' ? 'selected' : ''}>Nuevo</option>
			  <option value="proceso" ${ticket.estado == 'proceso' ? 'selected' : ''}>En Proceso</option>
			  <option value="atendido" ${ticket.estado == 'atendido' ? 'selected' : ''}>Atendido</option>
			</select>
		
		<input type="submit" value="Actualizar">
    </form>
	</div>
    
</tiles:putAttribute>
</body>
</html>
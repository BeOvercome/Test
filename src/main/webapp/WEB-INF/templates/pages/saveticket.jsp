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
	<h1>Nuevo Ticket</h1>
	
	<div>
	<form action="/ticket/save" method="post">
		<label for="titulo">Titulo:</label>
		<input type="text" id="titulo" name="titulo" required><br><br>
		
		<label for="creador">Creador:</label>
		<input type="text" id="creador" name="creador" required><br><br>
		
		<label for="equipo">Equipo Responsable:</label>
			<select id="equipo" name="equipo">
			  <option value="soporte" >Soporte</option>
			  <option value="desarrollo">Desarrollo</option>
			  <option value="atencionaclientes">Atencion a Clientes</option>
			</select>
		
		<label for="tipo">Tipo Incidencia:</label>
			<select id="tipo" name="tipo">
			  <option value="bug" selected>Bug</option>
			  <option value="feature">Feature</option>
			</select>
		
		<label for="gravedad">Gravedad:</label>
			<select id="gravedad" name="gravedad">
			  <option value="high">High</option>
			  <option value="medium">Medium</option>
			  <option value="low" selected>Low</option>
			</select>
		
		<label for="version">Version Software:</label>
		<input type="text" id="version" name="version" ><br><br>
		
		<label for="descripcion">Descripcion del problema:</label>
		<input type="text" id="descripcion" name="descripcion" required><br><br>
		
		<label for="archivos">Archivos:</label>
		<input type="text" id="archivos" name="archivos" ><br><br>
		
		<label for="estado">Estado:</label>
			<select id="estado" name="gravedad">
			  <option value="nuevo" selected>Nuevo</option>
			  <option value="proceso">En Proceso</option>
			  <option value="atendido">Atendido</option>
			</select>
		
		<input type="submit" value="Guardar">
    </form>
	</div>
    
</tiles:putAttribute>
</body>
</html>
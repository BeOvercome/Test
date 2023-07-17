<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<div class="container">
	<div class="col text-center">
		<img src="/img/logo/logo_overcome.png" class="rounded" alt="Overcome Test" style="width: 120px;">
	</div>
	<div id="loginForm" class="card card-login mx-auto mt-1">
		<div class="card-header text-center h5">Registra tu cuenta</div>
		<div class="card-header text-center h5">${users.size()}</div>

		<div class="card-body">
			<c:if test="${not empty error}">
				<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12 errorblock animated shake text-danger">* Nombre de usuario o contraseña no válidos</div>
			</c:if>
			<form name='f' action="/register" method='POST' class="" modelAttribute="userForm"  class="form-signin">
				<div class="form-group">
				 
					<label for="exampleInputEmail1"><i class="fas fa-at text-secondary"></i> Correo Electrónico:</label> <input class="form-control" id="exampleInputEmail1"  type="email" aria-describedby="emailHelp"
						placeholder="Correo Electrónico:" name="username" required>
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1"><i class="fas fa-unlock-alt text-secondary"></i> Contraseña:</label> <input class="form-control" id="password" type="password"  placeholder="Contraseña"
						name="password" required>
				</div>
			
				<input type="submit" class="btn btn-primary btn-block" value="Comenzar">
			</form>
			<div class="text-center mt-2">
				<a id="forgot-password" class="d-block small text-muted" href="/login">Acceder</a>
			</div>
		</div>
	</div>
	<div id="resetPw" class="card card-login mx-auto mt-1" style="display: none">
		<div class="card-header text-center">Recuperar contraseña</div>
		<div class="card-body">
			<div class="text-center mt-2 mb-4">
				<h4>¿Olvidaste tu constraseña?</h4>
				<p class="text-muted">Escribe tu correo electrónico, y te enviaremos las instrucciones para restaurar tu contraseña.</p>
			</div>
			<form>
				<div class="form-group">
					<input class="form-control" id="email" type="email" aria-describedby="emailHelp" placeholder="ejemplo@dominio.com" style="text-align: center">
				</div>
				<div class="form-group">
					<button id="sendMail" class="btn btn-primary btn-block">Enviar</button>
				</div>
			</form>
			<div class="text-center">
				<a class="d-block small" href=""><i class="fas fa-arrow-left"></i> Regresar al login</a>
			</div>
		</div>
	</div>
</div>
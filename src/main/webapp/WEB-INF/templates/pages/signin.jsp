<div class="container">
	<div class="col text-center">
		<img src="/img/logo/logo_overcome.png" class="rounded" alt="Overcome Test" style="width: 120px;">
	</div>
	<div id="loginForm" class="card card-login mx-auto mt-1">
		<div class="card-header text-center h5">Registrate</div>

		<div class="card-body">
			<c:if test="${not empty error}">
				<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12 errorblock animated shake text-danger">* Nombre de usuario o contraseña no válidos</div>
			</c:if>
			<form name='f' action="/register" method='POST' class="" modelAttribute="userForm"  class="form-signin">
				<div class="form-group">
				 
					<label for="exampleInputEmail1"><i class="fas fa-at text-secondary"></i>Correo Electrónico:</label> <input class="form-control" id="exampleInputEmail1"  type="email" aria-describedby="emailHelp"
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
</div>
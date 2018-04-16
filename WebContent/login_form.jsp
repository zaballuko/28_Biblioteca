<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
<title>Insert title here</title>

<link
	href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/styles.css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<section class="container"> <section class="login-form">
	<form action="login.jsp" method="post" role="login">
		<section>
		<h2>Please sign in</h2>
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-addon">
					<span class="text-primary glyphicon glyphicon-envelope"></span>
				</div>
				<input type="text" name="dni" placeholder="dni" required
					class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-addon">
					<span class="text-primary glyphicon glyphicon-lock"></span>
				</div>
				<input type="password" name="contrasenia" placeholder="Password"
					required class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<input type="checkbox" name="remember" value="1" /> Remember me
		</div>

		<button type="submit" value="entrar" name="entrar"
			class="btn btn-block btn-success">Log in</button>
		</section>
		<div>
			<a href="#">Forgot password ?</a>
		</div>
	</form>
	</section> </section>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<br>
	<a href="biblioteca.html"><button type="button"
			class="btn btn-primary" id="volver">Volver</button></a>
</body>
</html>
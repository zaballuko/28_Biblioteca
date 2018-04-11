<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css\custom.css">
<title>Login</title>
</head>
<body>
<div class="container main-section">
	<div class="row">
		<div class="col-md-12 text-center user-login-header">
			<h1>Login Form</h1>
			<p>Made with<span> Bootstrap</span></p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-sm-8 col-xs-12 col-md-offset-4 col-sm-offset-2 login-image-main text-center">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 user-image-section">
					<img src="image/businessman.png">
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 user-login-box">
					<div class="form-group" action="login.jsp" method="post">
				  		<input type="text" class="form-control" placeholder="User Name" name="dni">
					</div>
					<div class="form-group">
				  		<input type="text" class="form-control" placeholder="Password" name="contrase�a">
					</div>
					<a href="sistema.jsp" class="btn btn-defualt">Login</a>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 last-part">
					<p>Not registered?<a href="#"> Create an account</a></p>
				</div>
			</div>
		</div>
	</div>
</div>
    
    <%
    String nombre = request.getParameter("dni");
    String contrasena = request.getParameter("contrase�a");
    
    
    
    if(nombre.equals("12345678A") && contrasena.equals("123")){
    	session.setAttribute("iniciado", "si");
    	response.sendRedirect("sistema.jsp");
    }else{
    	response.sendRedirect("login_form.jsp");
    }
    
    %>
</body>
</html>
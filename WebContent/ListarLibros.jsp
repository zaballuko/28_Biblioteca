<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Libro"%>
<%@page import="modelo.LibroModelo"%>
<%@page import="vista.LibroVista"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
a:hover {
    color: red;
    text-decoration:none;
}
a{
    
    text-decoration:none;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>listar Libros</title>
</head>
<body>
	<header>
	<h1>listar Libros</h1>
	</header>

	<div class="table-responsive">
		<table class="table table-striped table-hover">
			<thead>
			<tr>
				<th>Titulo</th>
				<th>Escritor</th>
				<th>Opciones</th>
			</tr>
			</thead>
			
			<%
				LibroModelo libroModelo = new LibroModelo();
				ArrayList<Libro> libros = libroModelo.selectAll();

				Iterator<Libro> i = libros.iterator();
				while (i.hasNext()) {
					Libro libro = i.next();
					out.print("<tr><td>" + libro.getTitulo() + "</td><td>" + libro.getAutor()
							+ "</td><td><a style href='MostrarLibros.jsp?id=" + libro.getId()
							+ "'>Ver</a>/<a style='text-decoration:none;color: red;' href='EliminarLibros.jsp?id=" + libro.getId()
							+ "'>Eliminar</a></td></tr>");
				} //jsp interrogacion parametro = valor & interrogacion parametro = valor
			%>

		</table>
	</div>
	<br>

	<a href="InsertarLibros.jsp"><button type="button"
			class="btn btn-primary">Insertar</button></a>
	<a href="GestorDeLibros.html"><button type="button"
			class="btn btn-primary">Atras</button></a>

</body>
<link rel="stylesheet" href="./css/style.css" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</html>
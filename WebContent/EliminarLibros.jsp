<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="modelo.LibroModelo"%>
<%@page import="modelo.Libro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Borrar Libros</title>
</head>
<body>
	<header>
	<h1>¿Estas seguro?</h1>
	</header>

	<a
		href="EliminarLibros.jsp?adelante=1&id=<%request.getParameter("id");%>"><button
			type="button" class="btn btn-primary" value="Adelante">Adelante</button></a>

	<%
		System.out.println(request.getParameter("id"));
		if (request.getParameter("adelante") == "1") {

			int id = Integer.parseInt(request.getParameter("id"));
			LibroModelo libroModelo = new LibroModelo();
			libroModelo.delete(id);
			out.print("Libro eliminado");
		}
	%>
	<a href="ListarLibros.jsp"><button type="button"
			class="btn btn-primary">Cancelar</button></a>
</body>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
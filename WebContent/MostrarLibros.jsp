<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelo.LibroModelo"%>
<%@page import="modelo.Libro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	LibroModelo libroModelo = new LibroModelo();
	Libro libro = libroModelo.select(id);
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Información del Libro</title>
</head>
<body>
	<div class="panel panel-primary">
      <div class="panel-heading">Mostar Libros</div>
    	<div class="panel-body">
	
			<%out.println("<h3><b>Libro:</b></h3>"+libro.getTitulo());%>
			<%out.println("<h3><b>Autor:</b></h3>"+libro.getAutor());%>

	</div>
</div>



<a href="ListarLibros.jsp" class="btn btn-primary">Atras</a>
</body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>
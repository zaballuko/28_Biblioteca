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
<link rel="stylesheet" href="./css/style.css" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
<script type="text/javascript">
$(document).ready( function () {
	
    $('#table_id').DataTable();
} );

</script>

<style>
a:hover {
    color: green;
    text-decoration:none;
    font-weight: bold;
}
a{
    text-decoration:none;
}
#eliminar:hover{
	color: red;
}
#eliminar{
	color: orange;
}
#editar{
	color: violet;
}
#editar:hover{
	color: purple;
}
#container{
	margin-left:10px;
	margin-right:50px;
}
#insertar{
	margin-left:10px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>listar Libros</title>
</head>
<body>
	<header>
	<h1>listar Libros</h1>
	</header>
	
	<div class="table-responsive" class="col-xs-12 col-sm-6 col-md-4 col-lg-2" id="container" >
		<table class="table table-striped table-hover" id="table_id" class="display">
			<thead>
			<tr>
				<th>Titulo</th>
				<th>Escritor</th>
				<th>Opciones</th>
			</tr>
			</thead>
			<tbody>
			
			<%
				LibroModelo libroModelo = new LibroModelo();
				ArrayList<Libro> libros = libroModelo.selectAll();

				Iterator<Libro> i = libros.iterator();
				while (i.hasNext()) {
					Libro libro = i.next();
					out.print("<tr><td>" + libro.getTitulo() + "</td><td>" + libro.getAutor()
							+ "</td><td><a style href='MostrarLibros.jsp?id=" + libro.getId()
							+ "'>Ver</a>/<a id='eliminar'' href='EliminarLibros.jsp?id=" + libro.getId()
							+ "'>Eliminar</a>/<a id='editar' href='#'>Editar</a></td></tr>");
				} //jsp interrogacion parametro = valor & interrogacion parametro = valor
			%>
			</tbody>
		</table>
	</div>
	<br>

	<a href="InsertarLibros.jsp"><button type="button"
			class="btn btn-primary"  id="insertar" >Insertar</button></a>
	<a href="GestorDeLibros.html"><button type="button"
			class="btn btn-primary">Atras</button></a>

</body>

</html>
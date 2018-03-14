<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelo.LibroModelo"%>
<%@page import="modelo.Libro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	
	//para pillar el titulo y el autor introducido
	String titulo = request.getParameter("titulo");
	String autor = request.getParameter("autor");
	
	if(titulo == null || autor == null ||titulo == "" || autor == ""){
		if(titulo == "" || autor == ""){
			out.print("<br><p>Error: Falta meter un parametro </p>");
		}
		
	
%>
<html>
<script>

</script>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Libros</title>
</head>
<body>

<header> <h1>Insertar Libros</h1> </header>
<div class="container">
<form action="#" method="post">
<div class="form-group">
	 <label for="pwd">Titulo:</label>
	<input type=text class="form-control" name="titulo" placeholder="Inserta un titulo">
</div>
	<div class="form-group">
	<label for="pwd">Autor:</label>
	<input type=text class="form-control" name="autor" placeholder="Inserta un autor">
</div>
<div class="form-group">	
		  <input type="submit" class="form-control" name="submit" value="DALE!">
</div>
</form>
</div>
<%
	
	
	}else{
		//para meter los datos al libro
		Libro libro = new Libro();
		libro.setTitulo(titulo);
		libro.setAutor(autor);
		//insertar los datos
		LibroModelo libroModelo = new LibroModelo();
		libroModelo.insert(libro);
		//imprimir por pantalla
		
		out.print("<p>EL libro se ha introducido correctamente</p>");
	}
%>
<br>
<a href="ListarLibros.jsp"><button type="button" class="btn btn-primary">Volver</button></a>	
</body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
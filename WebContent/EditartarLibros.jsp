<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelo.LibroModelo"%>
<%@page import="modelo.Libro"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//para pillar el titulo y el autor introducido
	
	int id = Integer.parseInt(request.getParameter("id"));
	LibroModelo libroModelo = new LibroModelo();
	Libro libro = libroModelo.select(id);

%>
<style>
#volver{
	margin-left:10px;
	cursor: pointer;
}
</style>
<html>
<script>

</script>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Libros</title>
</head>
<body>

<header> <h1>Editar Libros</h1> </header>
<div class="container">
<form action="#" method="post">
<input type="hidden" name="id" value="<%=libro.getId()%>">
<div class="form-group">
	 <label for="pwd">Titulo:</label>
	<input type=text class="form-control" name="titulo" value="<%=libro.getTitulo()%>">
</div>
	<div class="form-group">
	<label for="pwd">Autor:</label>
	<input type=text class="form-control" name="autor" value="<%=libro.getAutor()%>">
</div>
<div class="form-group">	
		  <input type="submit" class="form-control" name="submit" value="Guardar cambios">
</div>
</form>
</div>
<%
	if(request.getParameter("submit") != null){
		
		libro.setTitulo(request.getParameter("titulo"));
		libro.setAutor(request.getParameter("autor"));
		libroModelo.update(libro);%>
		
			
		<script type="text/javascript" >alert("Libro se ha modificado con exito");window.location.href='ListarLibros.jsp';</script>
	<%}%>
	
	

<br>
<a href="ListarLibros.jsp"><button type="button" class="btn btn-primary" id="volver">Volver</button></a>	
</body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
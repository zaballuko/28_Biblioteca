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

	<div class="panel panel-danger">
      <div class="panel-heading">¿Estas seguro?</div>
    	<div class="panel-body">
		
		
			<a href="EliminarLibros.jsp?adelante=yes&id=<%=request.getParameter("id")%>" class="btn btn-danger btn-l" >Adelante</a>
			<a href="ListarLibros.jsp" class="btn btn-primary btn-lg active" >Volver Atras</a>

</div>
    </div>
	<!-- -->
	

	<%
	//es null de primeras como no es null
		if(request.getParameter("adelante")!= null){
			
		
		if (request.getParameter("adelante").equals("yes")){

			int id = Integer.parseInt(request.getParameter("id"));
			LibroModelo libroModelo = new LibroModelo();
			libroModelo.delete(id);
			out.print("Libro eliminado");
		}
	}
	%>
	
</body>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
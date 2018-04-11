<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Libro"%>
<%@page import="modelo.LibroModelo"%>
<%@page import="vista.LibroVista"%>
<%@page import="modelo.Prestamo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>

<script>
	$(document).ready(function() {

		$('#table_id').DataTable();
	});

	$(document).ready(function() {
		$(".popupimage").click(function(event) {
			event.preventDefault();
			$(".modal img").attr('src', $(this).attr('href'));
			$(".modal").modal("show");
		});
	});
	$(document).ready(function() {
		$("#notification").click(function() {
			$("body").css({
				"background-color" : "#2c3e50",
				"color": "white"
			});
		});
	});
</script>



<style>
a:hover {
	color: green;
	text-decoration: none;
	font-weight: bold;
}

a {
	text-decoration: none;
}

#eliminar:hover {
	color: red;
}

#eliminar {
	color: orange;
}

#editar {
	color: violet;
}

#editar:hover {
	color: purple;
}

#container {
	margin-left: 10px;
	margin-right: 50px;
}

#insertar {
	margin-left: 10px;
}

.toggle-ios {
	margin-top: 30px;
	margin-left: 50%;
}

.toggle-ios input {
	display: none;
}

.toggle-ios label {
	cursor: pointer;
	position: relative;
	display: block;
	width: 45px;
	height: 25px;
	border-radius: 15px;
	background-color: #bdc3c7;
}

.toggle-ios label:before {
	position: absolute;
	left: 3px;
	right: auto;
	top: 3px;
	content: "";
	width: 19px;
	height: 19px;
	border-radius: 100%;
	background-color: #fff;
}

.toggle-ios input[type=checkbox]:checked+label {
	background-color: #2ecc71;
}

.toggle-ios input[type=checkbox]:checked+label:before {
	left: auto;
	right: 3px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>listar Libros</title>
</head>
<body>
<div id="container">
	<header>


	<h1>listar Libros</h1>
	</header>

	<div class="table-responsive"
		class="col-xs-2 col-sm-4 col-md-6 col-lg-12" id="container">
		<table class="table table-striped table-hover" id="table_id"
			class="display">
			<thead>
				<tr>
					<th>Titulo</th>
					<th>Escritor</th>
					<th>Opciones</th>
					<th>Estado de entrega</th>
				</tr>
			</thead>
			<tbody>

				<%
					LibroModelo libroModelo = new LibroModelo();
					
					ArrayList<Libro> libros = libroModelo.selectAll();
		
					Iterator<Libro> i = libros.iterator();
					while (i.hasNext()) {
						Libro libro = i.next();		
						
						out.print("<tr>");
						
						
						out.print("<td>" + libro.getTitulo() + "</td><td>" + libro.getAutor()
								+ "</td><td><a style href='MostrarLibros.jsp?id=" + libro.getId()
								+ "'>Ver</a>/<a id='eliminar'' href='EliminarLibros.jsp?id=" + libro.getId()
								+ "'>Eliminar</a>/<a id='editar' href='EditartarLibros.jsp?id=" + libro.getId()
								+ "'>Editar</a></td>");
					
						
						
						if(libro.estaPrestado()){//esta entregado
							out.print("<td style='background-color: tomato'>Falta por entregar</td>");
							
						}else{
							out.print("<td style='background-color: #80ff80'>Esta entregado</td>");
						}
					out.print("</tr>");
					} //jsp interrogacion parametro = valor & interrogacion parametro = valor
				
					
							
							
				%>
			</tbody>
		</table>
	</div>
	<br>

	<a href="InsertarLibros.jsp"><button type="button"
			class="btn btn-primary" id="insertar">Insertar</button></a>
	<a href="GestorDeLibros.html"><button type="button"
			class="btn btn-primary">Atras</button></a>
			
	<a href="login_form.jsp"><button type="button"
			class="btn btn-primary">Login</button></a>
 	<a href="login2.jsp"><button type="button"
			class="btn btn-primary">Login2</button></a>

			
	<a href="image.png" class="popupimage" style="text-decoration: none"><button
			type="button" class="btn btn-primary">Qrcode</button></a>

	<div class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<img class="img-responsive" style="width: 100%" src="image/qr.jpg">
			</div>
		</div>
	</div>
	<div class="toggle-ios">
		<input type="checkbox" id="notification" checked /> <label for="notification"></label>
	</div>
</div>
</body>

</html>
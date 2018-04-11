<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("iniciado");
out.print("logout realizado");
%>
<br>
<a href="ListarLibros.jsp"><button type="button" class="btn btn-primary"  id="volver">Volver</button></a>
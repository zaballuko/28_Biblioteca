<%@page import="modelo.Usuario"%>
<%@page import="modelo.UsuarioModelo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String dni = request.getParameter("dni");
    String contrasenia = request.getParameter("contrasenia");
        
    //si el usuario no es null
    if(dni != null && contrasenia != null){
    	UsuarioModelo usuarioModelo = new UsuarioModelo();
        Usuario usuario = usuarioModelo.selectPorDniContrasenia(dni, contrasenia);
        
    	if(usuario != null){
    		session.setAttribute("dni", usuario.getDni());
        	response.sendRedirect("sistema.jsp");
    		
    	}else{
    		response.sendRedirect("login_form.jsp");
    	}
    	
    }else{
    	response.sendRedirect("login_form.jsp");
    }
    
    
    %>
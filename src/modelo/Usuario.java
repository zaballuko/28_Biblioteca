package modelo;

import java.util.ArrayList;
import java.util.Date;

public class Usuario {
	//atributos
	private int id;
	private String nombre;
	private String apellido;
	private int edad;
	private String dni;
	private ArrayList<Prestamo> prestamo;
	private String contrasenia;
	private boolean rol;
	private String image;
	private Date fechaNacimiento;
	
	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}
	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}
	/**
	 * @return the prestamo
	 */
	public ArrayList<Prestamo> getPrestamo() {
		return prestamo;
	}
	/**
	 * @param prestamo the prestamo to set
	 */
	public void setPrestamo(ArrayList<Prestamo> prestamo) {
		this.prestamo = prestamo;
	}
	/**
	 * @return the contrasenia
	 */
	public String getContrasenia() {
		return contrasenia;
	}
	/**
	 * @param contrasenia the contrasenia to set
	 */
	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}
	/**
	 * @return the rol
	 */
	public boolean getRol() {
		return rol;
	}
	/**
	 * @param rol the rol to set
	 */
	public void setRol(boolean rol) {
		this.rol = rol;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}

	
	
	
	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	//getters and setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	
}

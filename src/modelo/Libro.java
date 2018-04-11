package modelo;

import java.util.ArrayList;
import java.util.Iterator;

public class Libro {
	private int id;
	private String titulo;
	private String autor;
	private ArrayList<Prestamo> prestamos;
	private String image;
	
	

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

	public int getId() {
		return id;
	}

	/**
	 * @return the prestamos
	 */
	public ArrayList<Prestamo> getPrestamos() {
		return prestamos;
	}

	/**
	 * @param prestamos the prestamos to set
	 */
	public void setPrestamos(ArrayList<Prestamo> prestamos) {
		this.prestamos = prestamos;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}
	public boolean estaPrestado(){
		Iterator<Prestamo> i = this.prestamos.iterator();
		Prestamo prestamo;
		
		while(i.hasNext()){
			prestamo = i.next();
			if(!prestamo.isEntregado()){
				return true;
			}
		} //todos los prestamos estan entregados
		return false;
	}

	

}
	

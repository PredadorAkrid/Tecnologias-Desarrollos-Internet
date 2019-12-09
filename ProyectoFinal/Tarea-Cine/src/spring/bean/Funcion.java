package spring.bean;

public class Funcion {
	private String nombrePelicula;
	private String fecha;
	private String cine;
	private String clasificacion;
	
	public Funcion() {
		
	}
	
	public Funcion(String fecha, String cine) {
		setFecha(fecha);
		setCine(cine);
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getCine() {
		return cine;
	}

	public void setCine(String cine) {
		this.cine = cine;
	}

	public String getNombrePelicula() {
		return nombrePelicula;
	}

	public void setNombrePelicula(String nombrePelicula) {
		this.nombrePelicula = nombrePelicula;
	}

	public String getClasificacion() {
		return this.clasificacion;
	}

	public void setClasificacion(String clasificacion) {
		this.clasificacion = clasificacion;
	}
	
	public String toString() {
		String s = fecha + " " + cine + " " + nombrePelicula + " " + clasificacion;
		return s;
	}
	
	
}

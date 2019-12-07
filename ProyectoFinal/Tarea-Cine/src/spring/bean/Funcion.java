package spring.bean;

public class Funcion {
	private String nombrePelicula;
	private String fecha;
	private String cine;
	private String prueba;
	
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

	public String getPrueba() {
		return prueba;
	}

	public void setPrueba(String prueba) {
		this.prueba = prueba;
	}
	
	public String toString() {
		String s = fecha + " " + cine + " " + nombrePelicula + " " + prueba;
		return s;
	}
	
	
}

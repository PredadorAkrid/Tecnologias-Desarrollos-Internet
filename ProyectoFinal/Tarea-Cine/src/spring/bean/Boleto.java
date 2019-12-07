package spring.bean;

public class Boleto {
	private String nombrePelicula;
	private String fecha;
	private String cine;
	private String costoFinal;
	private int[] asientosBoleto;
			
	public Boleto() {
		
	}
	
	public Boleto(String fecha, String cine) {
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

	
	
	public String toString() {
		String s = fecha + " " + cine + " " + nombrePelicula + " " + costoFinal + " " + asientosBoleto;
		return s;
	}

	public int[] getAsientosBoleto() {
		return asientosBoleto;
	}

	public void setAsientosBoleto(int[] asientosBoleto) {
		this.asientosBoleto = asientosBoleto;
	}

	public String getCostoFinal() {
		return costoFinal;
	}

	public void setCostoFinal(String costoFinal) {
		this.costoFinal = costoFinal;
	}
	
	
}

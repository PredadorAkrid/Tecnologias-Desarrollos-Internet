package spring.bean;

public class Boleto {
	private String nombrePelicula;
	private String fecha;
	private String cine;
	private String clasificacion;
	private int costoFinal;
	private int numBoletos;
	private String[] asientos;
	private String horario;
			
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
		String s = fecha + " " + horario + " " + cine + " " + nombrePelicula + "  " + clasificacion +  " " + costoFinal +  " " + numBoletos + " " + asientos;
		return s;
	}

	

	public int getCostoFinal() {
		return costoFinal;
	}

	public void setCostoFinal(int costoFinal) {
		this.costoFinal = costoFinal;
	}

	public String getClasificacion() {
		return clasificacion;
	}

	public void setClasificacion(String clasificacion) {
		this.clasificacion = clasificacion;
	}

	public int getNumBoletos() {
		return numBoletos;
	}

	public void setNumBoletos(int numBoletos) {
		this.numBoletos = numBoletos;
	}

	public String[] getAsientos() {
		return asientos;
	}

	public void setAsientos(String[] asientos) {
		this.asientos = asientos;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}
	
	
}

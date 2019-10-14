package Formas;

public class Contacto {
	
	private String primerNombre;
	private String apellidoPaterno;
	private String email;
	private String celular;
	private String genero;
	private String pais;
	public String getPrimerNombre() {
		return primerNombre;
	}
	public void setPrimerNombre(String nombre) {
		this.primerNombre = nombre;
	}
	public String getApellidoPaterno() {
		return apellidoPaterno;
	}
	public void setApellidoPaterno(String apellido) {
		this.apellidoPaterno = apellido;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getGenero() {
		return this.genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
}

package spring.bean;
import java.util.Random;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class Ticket {
	@Size( min=10, max=100 )
	private String nombre;
	@Email @NotEmpty
	private String correo;
	@NotEmpty @Size( min=16, max=16 )
	private String tarjeta;
	@NotEmpty @Size( min=3, max=3 )

	private String codigo;
	
	private String anio;
	
	private String mes;
	private int numTicket;
	public Ticket() {
		numTicket = generaOrden();
	}
	private int generaOrden() {
	    Random rnd = new Random();
	    
	    int answer = Math.abs(rnd.nextInt());

		return answer;
	}
	public int getOrden() {
		return this.numTicket;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getTarjeta() {
		return tarjeta;
	}
	public void setTarjeta(String tarjeta) {
		this.tarjeta = tarjeta;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getAnio() {
		return anio;
	}
	public void setAnio(String anio) {
		this.anio = anio;
	}
	public String getMes() {
		return mes;
	}
	public void setMes(String mes) {
		this.mes = mes;
	}
	
	public String toString() {
		String s = nombre + " " +  correo + " " + tarjeta + " " + codigo + " " + anio + " " + mes;
		return s;
	}

}

package Control;

import Formas.Contacto;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import BaseDeDatos.ConexionBase;

import java.util.regex.Pattern;
import java.util.regex.Matcher;
@Controller

public class ControlForma {
	
	@RequestMapping( value = "/addContact", method = RequestMethod.POST )
	public String addContact( @ModelAttribute( "contacto") Contacto contacto, BindingResult result) {
		
		System.out.println("-------------------------------------------------------");
		String nombre = contacto.getPrimerNombre();	
		String paterno = contacto.getApellidoPaterno();
		String email = contacto.getEmail();
		String celular =  contacto.getCelular();
		String genero =  contacto.getGenero();
		String pais =  contacto.getPais();
		
		String patronNombre = "([A-Za-z]+)";
		String patronEmail ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		String patronCelular = "^[0-9]+";
		
		Pattern patternNombre = Pattern.compile(patronNombre);
		Matcher matcherNombre = patternNombre.matcher(nombre);
		Matcher matcherPaterno = patternNombre.matcher(nombre);
		Pattern patternEmail = Pattern.compile(patronEmail);
		Matcher matcherEmail = patternEmail.matcher(email);
		Pattern patternCelular = Pattern.compile(patronCelular);
		Matcher celularMatcher = patternCelular.matcher(celular);
		ConexionBase conn =  new ConexionBase();
		if(nombre == null || paterno == null  || email == null || celular == null || genero == null || pais == null) {
			System.out.println("Algún campo está vacio");
			
		}else {
			if(matcherNombre.matches()) {
					if(matcherPaterno.matches()){
						if(matcherEmail.matches()) {
							if(celularMatcher.matches() && celular.length() <= 10) {
								if(conn.addContact(contacto)) {
									System.out.println("Contacto registrado con éxito");
								}else{
									System.out.println("Ocurrió un fallo al registrar el contacto" );
								}
								
							}else {
								System.out.println("Celular inválido" );	
							}
							
							
						}else {
							System.out.println("Email inválido");
							
						}
					}else {
						System.out.println("Apellido paterno inválido" );
						
							
						}
						
			}else {
				System.out.println("Nombre inválido" );
				
			}	
		}
		System.out.println("-------------------------------------------------------");
		System.out.println("Datos del usuario");
		System.out.println( "Nombre: " + contacto.getPrimerNombre() );
		System.out.println( "Apellido: " + contacto.getApellidoPaterno() );	
		System.out.println( "Mail: " + contacto.getEmail() );	
		System.out.println( "Celular: " + contacto.getCelular() );	
		System.out.println(	"Género: " + contacto.getGenero());
		System.out.println( "País: " +  contacto.getPais());
		System.out.println("-------------------------------------------------------");
		return "redirect:contactos.html";		
	}	
	@RequestMapping( "/contactos" )
	public ModelAndView showContacts() {
				
		return new ModelAndView( "contacto", "command", new Contacto() );
		
	}
}

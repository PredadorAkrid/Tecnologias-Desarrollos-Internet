package spring.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.bean.*;
import spring.modelo.*;

@Controller

public class Control {
	
	private static BasePrueba basePrueba = new BasePrueba();
	

	@RequestMapping( value = "/get", 
	         method = RequestMethod.GET )
	public ModelAndView index() {
		
		Funcion funcion = new Funcion();
		return new ModelAndView("funcion", "funcion", funcion);
	}
	
	
	
	@RequestMapping( value = "/get_cines",
					 method = RequestMethod.GET )
	public @ResponseBody String getTheaterList( @RequestParam("term") String busqueda) {
		System.out.println("Cine buscado: " + busqueda);
		basePrueba.getConexion();
		List<String> cines = basePrueba.getCines(busqueda);
		System.out.println(cines.toString());
		return cines.toString();
	}
	@RequestMapping(value="/get_info_pelicula", method = RequestMethod.GET)
	public @ResponseBody String pelicula(HttpServletRequest req, HttpServletResponse res) {
		System.out.println(req.getParameter("id_pelicula"));
		String resp = "hola";
	    return resp;
	}
	
	@RequestMapping( value = "/save_pelicula", method = RequestMethod.POST )
	public ModelAndView SavePelicula(@ModelAttribute( "function" ) Funcion func) {
		System.out.println(func.toString());
		Boleto boleto = new Boleto();
		basePrueba.getConexion();
		return new ModelAndView("boleto", "boleto", boleto);
	}
	
	
	
	
		
	
}

package spring.control;

import java.util.List;
//
//
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

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
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import spring.bean.*;
import spring.modelo.*;

@Controller


public class Control {
	
	private static BasePrueba basePrueba = new BasePrueba();
	

	@RequestMapping( value = "/get", 
	         method = RequestMethod.GET )
	public ModelAndView index() {
		
		Funcion funcion = new Funcion();
		basePrueba.getConexion();
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
	public @ResponseBody String pelicula(HttpServletRequest req, HttpServletResponse response, Model model) {
		List<List<String>> list = basePrueba.getInfoPelicula(req.getParameter("nombre_pelicula"));
		System.out.println(list.size());
	    String titulo = list.get(0).get(0);
	    String clasificacion =list.get(0).get(1);
	    String horario =list.get(0).get(2);
	    String sala =list.get(0).get(3);
	    
	    
	    
	    model.addAttribute("nombre", titulo);
	    model.addAttribute("clasificacion", clasificacion);
	  

		return titulo + "," + clasificacion;
	}
	
	@RequestMapping( value = "/save_pelicula", method = RequestMethod.POST )
	public ModelAndView SavePelicula(@ModelAttribute( "function" ) Funcion func) {
		Boleto boleto = new Boleto();
		boleto.setNombrePelicula(func.getNombrePelicula());
		boleto.setFecha(func.getFecha());
		boleto.setCine(func.getCine());
		boleto.setClasificacion(func.getClasificacion());
		List<List<String>> list = basePrueba.getInfoPelicula(func.getNombrePelicula());
		boleto.setHorario(list.get(0).get(2));
		boleto.setSala(list.get(0).get(3));
		
		this.bol = boleto;
		System.out.println(boleto.toString());
		return new ModelAndView("numboletos", "numboletos", boleto);
	}
	
	@RequestMapping( value = "/save_precio", method = RequestMethod.POST )
	public ModelAndView SavePrecio(HttpServletRequest req,HttpServletResponse response, @ModelAttribute( "numboletos" ) Boleto bolAux) {
		this.precio = Integer.parseInt(req.getParameter("precioFinal"));
		this.numBoletos = Integer.parseInt(req.getParameter("numBoletos"));
		bolAux.setCine(bol.getCine());
		bolAux.setClasificacion(bol.getClasificacion());
		bolAux.setFecha(bol.getFecha());
		bolAux.setNombrePelicula(bol.getNombrePelicula());
		bolAux.setCostoFinal(precio);
		bolAux.setNumBoletos(this.numBoletos);
		bolAux.setHorario(bol.getHorario());
		bolAux.setSala(bol.getSala());
		bol = bolAux;
		System.out.println(bol.toString());
		return new ModelAndView("boleto", "boleto", bolAux);
	}
	
	/**
	 * Método para renderizar la vista de elección de asientos
	 * 
	 * @return
	 */
	@RequestMapping( value = "/boletos_asiento", method = RequestMethod.GET )
	public ModelAndView boletosAsientos() {
		
		return new ModelAndView("boleto", "boleto", bol);
	}
	/**
	 * Método para guardar los asientos elegidos por el usuario
	 * @param req
	 * @param response
	 * @param bolAux
	 * @return
	 */
	
	@RequestMapping( value = "/save_asientos", method = RequestMethod.POST )
	public ModelAndView saveAsientos(HttpServletRequest req,HttpServletResponse response, @ModelAttribute( "boleto" ) Boleto bolAux) {
		
		this.asientosSinSplit = req.getParameter("asientos");
		lugares = this.asientosSinSplit.split(",");
		for(String aux: lugares){
			System.out.println(aux);
			
		}
		bol.setAsientos(lugares);
		Ticket ticket = new Ticket();
		return new ModelAndView("ticket", "ticket", ticket);
	}
	/**
	 * Método para renderizar la vista de pago
	 * 
	 * @return
	 */
	@RequestMapping( value = "/ticket", method = RequestMethod.GET )
	public ModelAndView pago() {
		Ticket ticket  = new Ticket();
		return new ModelAndView("ticket", "ticket", ticket);
	}
	
	@RequestMapping( value = "/save_pago", method = RequestMethod.POST )
	public ModelAndView SavePago(@Valid @ModelAttribute( "ticket" ) Ticket ticket,
			BindingResult result, ModelMap model ) {
		System.out.println(ticket.toString());
		if (result.hasErrors()) 
			return new ModelAndView("ticket", "ticket", ticket);
		
		
		model.addAttribute( "comprobante", "Estimado " + ticket.getNombre() +
				 ", tu compra ha sido exitosa ");
		model.addAttribute( "nombre", ticket.getNombre());
		model.addAttribute( "numOrden", Integer.toString(ticket.getOrden()));
		
		model.addAttribute( "asientos", this.asientosSinSplit);

		
		
		System.out.println(this.bol.toString());
		return new ModelAndView("comprobante","boleto", this.bol);
	}
	
	
	@RequestMapping(value="/get_precio", method = RequestMethod.GET)
	public @ResponseBody String getPrecio(HttpServletRequest req, HttpServletResponse response, Model model) {
		
	    model.addAttribute("precio", bol.getCostoFinal());
		return Integer.toString(precio);
	}
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	private String asientosSinSplit = "";
	private static int precio = 0;
	private static int numBoletos = 0;
	private String[] lugares;
	private static Boleto bol = new Boleto();
}

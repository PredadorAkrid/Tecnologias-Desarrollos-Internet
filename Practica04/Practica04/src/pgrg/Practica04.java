package pgrg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Practica04
 */
@WebServlet("/Practica04")
public class Practica04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Practica04() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nombre = request.getParameter("nombre");
		String patronNombre = "([A-Za-z]+)";
		String paterno = request.getParameter("paterno");
		String email = request.getParameter("email");
		String patronEmail ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		Pattern patternNombre = Pattern.compile(patronNombre);
		Matcher matcherNombre = patternNombre.matcher(nombre);
		
		Matcher matcherPaterno = patternNombre.matcher(paterno);
		
		Pattern patternEmail = Pattern.compile(patronEmail);
		Matcher matcherEmail = patternEmail.matcher(email);
		PrintWriter out = response.getWriter();
		if(nombre == null || paterno == null | email == null) {
			out.println("<html>");
			out.println("<head><title>Practica 04</title>") ;
			out.println("<body>");
			out.println("<h1> Error, algún campo está vacio :(");
			out.println("</body>");
			out.println("</html>");
		}else {
			if(matcherNombre.matches()) {
					if(matcherPaterno.matches()){
						if(matcherEmail.matches()) {
							out.println("<html>");
							out.println("<head><title>Practica 04</title>") ;
							out.println("<body>");
							out.println("<h1>Bienvenido"+  nombre + "</h1>");
							out.println("<h6>Tu nombre es: " + nombre + "\nTu apellido es:" + paterno + " " + "</h6>");
							out.println("<h6>Tu email es: " + email + "</h6>");
							out.println("</body>");
							out.println("</html>");
						}else {
							out.println("<html>");
							out.println("<head><title>Practica 04</title>") ;
							out.println("<body>");
							out.println("<h1> Error, el email es inválido :(");
							out.println("</body>");
							out.println("</html>");
						}
					}else {
						out.println("<html>");
						out.println("<head><title>Practica 04</title>") ;
						out.println("<body>");
						out.println("<h1> Error, el apellido es inválido :(");
						out.println("</body>");
						out.println("</html>");
							
						}
						
			}else {
				out.println("<html>");
				out.println("<head><title>Practica 04</title>") ;
				out.println("<body>");
				out.println("<h1> Error, el nombre es inválido :(");
				out.println("</body>");
				out.println("</html>");
			}	
		}
	}

}

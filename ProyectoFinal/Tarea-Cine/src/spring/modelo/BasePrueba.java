package spring.modelo;

import java.util.ArrayList; 
import java.util.StringTokenizer;
import java.util.Arrays;
import java.util.List; 
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import javax.naming.NamingException;
import com.mysql.cj.jdbc.MysqlDataSource;

import spring.modelo.BDMYSQL;

import java.util.List;
//import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.security.MessageDigest; 
import java.util.Calendar;
import java.util.GregorianCalendar;
import spring.bean.Boleto;
import spring.modelo.BDMYSQL;

public class BasePrueba {
	
	private List<String> cinesDisponibles;
	MysqlDataSource ds = null;
    Connection connect = null;
    Statement statement = null;
    BDMYSQL bdMySql;
    public Connection getConexion () {
 	   
 	   MysqlDataSource ds = null;
 	   Connection connect = null;
 	   
 	   try {
 		  ds = new MysqlDataSource();
           ApplicationContext context = new ClassPathXmlApplicationContext( "Spring-Datasource.xml" );	            
           BDMYSQL bdMySql = (BDMYSQL) context.getBean( "controlPropiedades" );
           System.out.println("bdMySql");

           
           ds.setUrl( bdMySql.getUrlBD() );

           ds.setUser( bdMySql.getUser() );
           ds.setPassword( bdMySql.getPassword() ); 
           connect = ds.getConnection();
           System.out.println(bdMySql.getUrlBD());
           System.out.println(bdMySql.getPassword());
           System.out.println(bdMySql.getUser());
           return connect ;
 	   } 
        catch (SQLException error) 
          { 
      	   System.out.println( error.toString() );
      	    return connect ;
          }  
    }
	public BasePrueba() {
		this.connect = getConexion();
		

	}
	//Método para simular una petición a la bdd y obtener todos los cines que coincidan con la búsqueda del usuario
	//@return una lista de cines filtrados 
	public List<String> getCines(String busqueda){
		busqueda = busqueda.toLowerCase();
		List<String> res = new ArrayList<String>();
		
		try{
		String query = "SELECT estado,ciudad  FROM cines WHERE ciudad LIKE ?";
		PreparedStatement ps = connect.prepareStatement(query);
		ps.setString(1,busqueda + "%");
		ResultSet rs = ps.executeQuery();
		while ( rs.next() ){
			  String est = rs.getString("estado");
			  String ciu = rs.getString("ciudad");
			  System.out.println(est + ciu);
			  res.add('"' + est + ": " + ciu + '"');
		      
		}
	    rs.close();
	    ps.close();
	    return res;
		}catch(SQLException e){
			System.out.println("Error en la consulta sql " +  e);
		}
		return res;
	}
	//Método para simular una petición a la bdd y obtener todos los cines que coincidan con la búsqueda del usuario
	//@return una lista de cines filtrados 
	public List<List<String>> getInfoPelicula(String busqueda){
		List<List<String>> res = new ArrayList<List<String>>();
		List<String> aux = new ArrayList<String>();
		
		try{
		String query = "SELECT *  FROM pelicula WHERE titulo=?";
		PreparedStatement ps = connect.prepareStatement(query);
		ps.setString(1,busqueda);
		ResultSet rs = ps.executeQuery();
		while ( rs.next() ){
			  String tit = rs.getString("titulo");
			  String clas = rs.getString("clasificacion");
			  aux.add(tit);
			  aux.add(clas);
			  res.add(aux);
		      
		}
	    rs.close();
	    ps.close();
	    return res;
		}catch(SQLException e){
			System.out.println("Error en la consulta sql " +  e);
		}
		return res;
	}

}

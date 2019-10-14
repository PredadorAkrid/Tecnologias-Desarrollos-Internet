package BaseDeDatos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import Formas.Contacto;

public class ConexionBase {
	public String driver = "com.mysql.cj.jdbc.Driver";
	public String url = "jdbc:mysql://localhost:3306/contactos?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
    public String username = "root";
    public String password = "1234";
    public Connection getConnection() {
    	Connection conn = null;
    	try {
    		Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
            
    	}catch(ClassNotFoundException | SQLException e) {
    		System.out.println("Error en la conexión: " + e);
    	}
    
    	return conn;
    }
	public boolean addContact(Contacto contact) {
    	    Connection connect = null;
	        Statement statement = null;
	        try 
	        {

	            connect = getConnection();
	            statement = connect.createStatement();
	            String sql = "insert into contactos (nombre, apellido, email, celular, genero, pais ) values (?, ?, ?, ?, ?, ? )";
	            PreparedStatement ps = connect.prepareStatement( sql );
	            ps.setString( 1, contact.getPrimerNombre() );
	            ps.setString( 2, contact.getApellidoPaterno() );
	            ps.setString( 3, contact.getEmail() );
	            ps.setString( 4, contact.getCelular());
	            ps.setString( 5, contact.getGenero() );
	            ps.setString( 6, contact.getPais() );
	            ps.executeUpdate();
	            return true;

	        }
	        catch (SQLException error){ 
	        	System.out.println("Registro inválido");
	        	System.out.println( error.toString() );
	            return false;

	       }     		   
	   }
    
}

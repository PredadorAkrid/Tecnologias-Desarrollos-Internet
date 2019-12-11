<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student Enrollment Detail Confirmation</title>
	<link href="<c:url value='/static/css/comprobante.css'/>" rel="stylesheet">
</head>
<body>
	<div class="success">
		Confirmación de pedido : ${comprobante}
		<br>
		<br>
		También te hemos enviado la confirmación a tu correo : ${ticket.correo}.
	</div>
	<jsp:useBean id="boleto" class="spring.bean.Boleto" scope="request" />
	
	<div class="datos-boleto">
	  <br>   
	  Datos de la compra:
	  <br>                     
        <ul class="list-group-item">
          <li class="list-group-item">
             Nombre: ${nombre}.
          </li>
          <li class="list-group-item">
          	Pelicula: <jsp:getProperty name="boleto" property="nombrePelicula"/>.
          </li>   
          <li class="list-group-item">
          	Versión: Español.
          </li>
          <li class="list-group-item">
          	Día: <jsp:getProperty name="boleto" property="fecha"/>.
          </li>
          <li class="list-group-item">
          	Día: <jsp:getProperty name="boleto" property="horario"/>.
          </li>
          <li class="list-group-item">
          	Cine: <jsp:getProperty name="boleto" property="cine"/>.
          </li>
          <li class="list-group-item">
          	Sala: <jsp:getProperty name="boleto" property="sala"/>.
          </li>
          <li class="list-group-item">
          	Boletos: <jsp:getProperty name="boleto" property="numBoletos"/>.
          </li>
          <li class="list-group-item">
          	Asientos:  ${asientos}.
          </li>
          <li class="list-group-item">
          	Costo final: <jsp:getProperty name="boleto" property="costoFinal"/>.
          </li>
          </ul>        
          
          Datos para Comprobante Fiscal:
          <ul class="list-group-item">
          <li class="list-group-item">
          	Cine: <jsp:getProperty name="boleto" property="cine"/>.
          </li>
          <li class="list-group-item">
             Numero de orden: ${numOrden}.
          </li>
           <li class="list-group-item">
             Fecha Compra: <jsp:getProperty name="boleto" property="fecha"/> .
          </li>
          </ul>        
          
          
          Terminos y condiciones.
          
          
            
             
	</div>	 
	 
</body>
</html>
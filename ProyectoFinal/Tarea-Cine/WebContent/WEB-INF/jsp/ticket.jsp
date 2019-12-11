<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pago</title>
	
	<link href="<c:url value='/static/css/pago.css'/>" rel="stylesheet">
	<link href="<c:url value='/static/css/styles01.css'/>" rel="stylesheet">
	<script type="text/javascript" 
		src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js' /> " ></script>
</head>
<body>
	<center>
		<h1>Detalles de pago</h1>
		<div id="content">
			<div>
				Total a pagar:
			</div>
			<div id="total">
				$$$$$
			</div>
			<form:form method="POST" commandName="ticket" action="save_pago.html" acceptCharset="UTF-8">
				<div  class="line">
					<label for="nombre">Nombre en la tarjeta</label><br>
					<form:input type="text" path="nombre" id="nombre" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="nombre" class="help-inline"/>
					</div>
				</div>
				<div class="line">
					<label for="correo"> E-Mail</label><br>
					<form:input type="text" path="correo" id="correo" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="correo" class="help-inline"/>
					</div>
				</div>
				<div class="line">
					<label for="tarjeta">Número de tarjeta</label><br>
					<form:input type="text" path="tarjeta" id="tarjeta" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="tarjeta" class="help-inline"/>
					</div>
				</div>
				<div class="line">
					<label for="codigo">Código de seguridad</label><br>
					<form:input type="text" path="codigo" id="codigo" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="codigo" class="help-inline"/>
					</div>
				</div>
				<div class="line">
					<label for="fecha">Fecha de vencimiento</label><br>
					<div id="fecha">
							<form:select path="mes"  multiple="false"  class="form-control input-mes">

							<option value="01">01</option>
							<option value="02">02</option>
							<option value="03">03</option>
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="06">06</option>
							<option value="07">07</option>
							<option value="08">08</option>
							<option value="09">09</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</form:select>
						
						<form:select path="anio"  multiple="false"  class="form-control input-anio">

							<option value="2019">2019</option>
							<option value="2020">2020</option>
							<option value="2021">2021</option>
							<option value="2022">2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
							<option value="2025">2025</option>
							<option value="2026">2026</option>
							<option value="2027">2027</option>
							<option value="2028">2028</option>
							<option value="2029">2029</option>
							<option value="2030">2030</option>
							<option value="2031">2031</option>
							<option value="2032">2032</option>
							<option value="2033">2033</option>
							<option value="2034">2034</option>
							<option value="2035">2035</option>
							<option value="2036">2036</option>
							<option value="2037">2037</option>
							<option value="2038">2038</option>
							<option value="2039">2039</option>
						</form:select>
					</div>
				</div>
				<div class="line">
					<button type="submit" class="boton">Continuar</button>
				</div>
			</form:form>
		</div>
	</center>
	<script type="text/javascript"> 
		var total = 0; //esto guarda el total a pagar
		
		
		$(document).ready(function(){
			$.ajax({
		        type : "GET",
		        url : "${pageContext.request.contextPath}/get_precio.html",
				
		        success: function(data){
		            
		            document.getElementById("total").textContent = "$ " + data;
		        }
		   	 });
			
		});
	</script>
</body>
</html>
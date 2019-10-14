<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Spring Formulario Práctica06</title>
		
</head>
<body>
	<style>
		body{
			background-color:#d0e4fe;
		}
		.div-cliente{
			display:inline;
		}
	</style>
<h2 align="center">Datos de registro</h2>
<div id="div-cliente" align="center">
<form:form method="post" action="addContact.html" class="formulario-cliente" onsubmit="valida_envia()">

	<table bgcolor="11BBB0">
	<tr>
		<td><form:label path="primerNombre">Nombre</form:label></td>
		<td><form:input path="primerNombre" /></td> 
	</tr>
	<tr>
		<td><form:label path="apellidoPaterno">Apellido Paterno</form:label></td>
		<td><form:input path="apellidoPaterno" /></td>
	</tr>
	<tr>
		<td><form:label path="email">Email</form:label></td>
		<td><form:input path="email" /></td>
	</tr>
	<tr>
		<td><form:label path="celular">Celular</form:label></td>
		<td><form:input path="celular" /></td>
	</tr>
	<tr>
			<td>Género :</td>
			<td><form:radiobutton path="genero" value="M" label="M" /> 
				<form:radiobutton path="genero" value="F" label="F" />
			</td>
				
		</tr>
	<tr>
	<tr>
			<td>País :</td>
			<td><form:select path="pais">
				   <form:option value="" label="Selecciona" />
				   <form:option value="1" label="Mexico" />
				   <form:option value="2" label="Usa" />
				   <form:option value="3" label="Canada" />
				   <form:option value="4" label="Otro" />
			    </form:select></td>
			
	</tr>
		<td colspan="2">
			<input type="submit" value="Add Contact"/>
		</td>
	</tr>
</table>		
</form:form>
	</div>
	
	<script type="text/javascript">
		function valida_envia(){
			var nombre = document.getElementById('primerNombre');
			var apellido = document.getElementById('apellidoPaterno');
			var email = document.getElementById('email');
			var celular = document.getElementById('celular');
			var pais = document.getElementById('pais').value;
			var regNombre = /^[a-zA-Z]+$/;
			var regApellido = /^[a-zA-Z]+$/;
			var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
			var regCelular = /^[0-9]+$/;
			
			if(regNombre.test(nombre.value)){
		    	if(regApellido.test(apellido.value)){
			    	if (emailRegex.test(email.value) && celular.length()<= 10){
			   			if(regCelular.test(celular.value)){
			   				if(pais == 1 || pais == 2 || pais == 3 || pais == 4){
			   					window.alert("Procesando petición")
			   				}
			   				else{
			   					window.alert("País inválido")	
			   				}
			   				
			   			}else{
			   				window.alert("Celular inválido");	
			   			}
			    		
			 		}else {
			   			window.alert("La dirección de email es incorrecta.");
			  		}
		  		
		  		}else{
		  			window.alert("Apellido inválido")
		  		}
			}else{
		    	window.alert("Nombre inválido");
			}
		}
	
	</script>
	
	  
</body>
</html>
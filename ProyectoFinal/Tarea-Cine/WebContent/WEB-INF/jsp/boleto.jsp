<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Asientos</title>
	<link href="<c:url value='/static/css/styles01.css'/>" rel="stylesheet">
	<link href="<c:url value='/static/css/asientos.css'/>" rel="stylesheet">
	<script type="text/javascript" 
		src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js' /> " ></script>
	
	<title>Boleto</title>
</head>
<body>

		<div id="content">
		<h1>Escoge los asientos</h1>
		<div>
			<table>
				<tr>
					<td class="label">L</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td class="asiento ocupado" id="L1"><img src="<c:url value= '/static/img/ocupado.png'/>" ></td>
					<td class="asiento ocupado" id="L2"><img src="<c:url value= '/static/img/ocupado.png'/>" ></td>
					<td class="asiento ocupado" id="L3"><img src="<c:url value= '/static/img/ocupado.png'/>" ></td>
					<td class="asiento ocupado" id="L4"><img src="<c:url value= '/static/img/ocupado.png'/>" ></td>
					<td class="asiento" id="L5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="L6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="L7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="L8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="L9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="L10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="L11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="L12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">L</td>
				</tr>
				<tr>
					<td class="label">K</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td class="asiento" id="K1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="K12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">K</td>
				</tr>
				<tr>
					<td class="label">J</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td class="asiento" id="J1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="J12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">J</td>
				</tr>
				<tr>
					<td class="label">I</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td class="asiento" id="I1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="I11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">I</td>
				</tr>
				<tr>
					<td class="label">H</td>
					<td class="asiento" id="H1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H13"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="H14"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">H</td>
				</tr>
				<tr>
					<td class="label">G</td>
					<td class="asiento" id="G1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G13"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="G14"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">G</td>
				</tr>
				<tr>
					<td class="label">F</td>
					<td class="asiento" id="F1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F13"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="F14"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">F</td>
				</tr>
				<tr>
					<td class="label">E</td>
					<td class="asiento" id="E1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E13"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="E14"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">E</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="label">C</td>
					<td class="asiento" id="C1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td class="asiento" id="C7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="C12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">C</td>
				</tr>
				<tr>
					<td class="label">B</td>
					<td class="asiento" id="B1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B13"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="B14"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">B</td>
				</tr>
				<tr>
					<td class="label">A</td>
					<td class="asiento" id="A1"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A2"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A3"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A4"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A5"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A6"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A7"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A8"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A9"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A10"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A11"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A12"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A13"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="asiento" id="A14"><img src="<c:url value= '/static/img/vacío.png'/>" ></td>
					<td class="label">A</td>
				</tr>
				<tr id="pantalla">
					<td colspan="16"> P A N T A L L A</td>
				</tr>
				
			</table>
		</div>
		 <div id="confirmar-div" >
			<button id="confirmar" class="button" type="submit" name="salir_button" onclick="confirmar()">Confirmar</button>
		</div>
		 <div id="boletos-div" style="display: none">
			<jsp:useBean id="boleto" class="spring.bean.Boleto" scope="request" />
			<jsp:getProperty name="boleto" property="numBoletos"/>
			
		</div>
		</div>
		
	
		
	<script type="text/javascript"> 
		var n; //esto guarda el número de asientos
		var a; 
		var asientosUsuario;
	
		const asientos = document.querySelectorAll(".asiento");
		const ocupados = document.querySelectorAll(".ocupado");
		$(document).ready(function(){
			asientosUsuario = document.getElementById("boletos-div").innerHTML;
			n = 140;
			a = []
			
		});
			asientos.forEach((element)=> {
			  element.addEventListener("click", selec)
			  
			});

			ocupados.forEach((element)=> {
			    element.removeEventListener("click", selec)
			})

			function selec() {
				if ( n > 0 && a.length < asientosUsuario ) {
					this.childNodes[0].src = "static/img/seleccionado.png";
					this.classList.add("selec");
					this.addEventListener("click", deselec);
					this.removeEventListener("click", selec);
					a.push(this.id);
					n--;
					console.log(n);
					console.log("Asientos seleccionados " + a.length)
					console.log("Asientos del usuario " + asientosUsuario);
					console.log(a)

				}
				else{
					window.alert("Ya seleccionó todos sus asientos disponibles");	
				}
					
				
			}

			function deselec() {
				this.childNodes[0].src = "static/img/vacío.png";
				this.classList.remove("selec");
				this.removeEventListener("click", deselec);
				this.addEventListener("click", selec);
				var i = a.indexOf(this.id);
				a.splice(i, 1);
				n++;
				console.log(n);
				console.log("Asientos seleccionados " + a.length)
				console.log("Asientos del usuario " + asientosUsuario);

			}
			aux = "";
			function confirmar(){
				if(a.length == 0){
					window.alert("Porfavor, selecciona los asientos.");
				}
				else{
		            window.alert("Si está entrando")
					console.log("---------------------")
		            console.log(asientosUsuario)
					console.log(n)
					console.log(a)
					a.forEach(myFunc)
					console.log(aux);
		            
					$.ajax({
				        type : "POST",
				        url : "${pageContext.request.contextPath}/save_asientos.html",

				        data : {
				            "asientos" : aux,

				        },
				        success: function(data){
				            window.alert("éxito en la seleccion de asientos");
				            window.location.href="${pageContext.request.contextPath}/ticket.html";
				        	
				        }
				   	 });
				}
				
			}
			
			function myFunc(element)
			{
				this.aux = aux + element + ",";
			}
	</script>

		
</body>
</html>
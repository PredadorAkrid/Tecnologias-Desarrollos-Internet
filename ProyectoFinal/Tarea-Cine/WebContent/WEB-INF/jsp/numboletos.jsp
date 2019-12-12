<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Boletos</title>
	<link href="<c:url value='/static/css/styles01.css'/>" rel="stylesheet">
	<link href="<c:url value='/static/css/boletos.css'/>" rel="stylesheet">
	<script type="text/javascript" 
		src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js' /> " ></script>
	<script type="text/javascript" 
		src="<c:url value='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js' /> "></script> 
</head>
<body>
	
		<div id="content">
		<h1>Indique el número de boletos</h1>
			<table>
				<tr>
					<td class="label">Adulto $73 c/u</td>
					<td class="adulto menos"><img src="<c:url value= '/static/img/menos.png'/>" ></td>
					<td id="adulto">0</td>
					<td class="adulto mas"><img src="<c:url value= '/static/img/mas.png'/>" ></td>
				</tr>
				<tr>
					<td class="label">Mayor a 60 años $64 c/u</td>
					<td class="mayor menos"><img src="<c:url value= '/static/img/menos.png'/>" ></td>
					<td id="mayor">0</td>
					<td class="mayor mas"><img src="<c:url value= '/static/img/mas.png'/>" ></td>
				</tr>
				<tr>
					<td class="label">Menor $64 c/u</td>
					<td class="menor menos"><img src="<c:url value= '/static/img/menos.png'/>" ></td>
					<td id="menor">0</td>
					<td class="menor mas"><img src="<c:url value= '/static/img/mas.png'/>" ></td>
				</tr>
				<tr>
					<td class="label blue">Total a pagar</td>
					<td colspan="3">$ <label id="total">0</label></td>
				</tr>
			</table>
			<div>
				<button type="submit" class="boton" onclick="confirmarPedido()">Continuar</button>
			</div>
		</div>
	<script>
	/**
	 * 
	 **/
		var n = 0; //esto guarda el número de asientos
		var total = 0; //esto guarda el total a pagar
	
	
		const menos = document.querySelectorAll(".menos");
		const mas = document.querySelectorAll(".mas");
		const tot = document.getElementById("total");
		var boletos = 0;
		var adultos = 0;
		var niños = 0;
		var adultosDesc = 0;
		menos.forEach((element) => {
		    element.addEventListener("click", restar)
		})
	
		mas.forEach((element)=>{
		    element.addEventListener("click", sumar)
		})
	
		function sumar() {
			var clase = this.classList[0];
			var res = document.getElementById(clase);
			res.textContent = Number(res.textContent) + 1;
			total += getPrecio(clase);
			setTotal();
			n++;
			boletos = boletos + 1;
		}
	
		function restar() {
			var clase = this.classList[0];
			var res = document.getElementById(clase);
			if(res.textContent > 0)
				res.textContent = res.textContent - 1;
			//total = total -  getPrecio(clase);
			n--;

			if(boletos <= 0){
				boletos = 0;
				total = 0;
				setTotal();

			}
			else{
				boletos = boletos -  1;	
				total = total - getPrecio(clase);
				setTotal();

			}
		}
	
		function getPrecio(clase){
			if ( clase == "adulto")
				return 73;
			return 63;
		}
	
		function setTotal() {
			tot.textContent = total;
	
		 }
		function confirmarPedido(){
			if(boletos == 0){
				window.alert("Debes seleccionar al menos un boleto")
			}
			else{
				window.alert(boletos)
				window.alert(total)
				$.ajax({
		        type : "POST",
		        url : "${pageContext.request.contextPath}/save_precio.html",

		        data : {
		            "precioFinal" : total,
		            "numBoletos": boletos,
		        },
		        success: function(data){
		            window.alert("Si está entrando")
		        	window.location.href="${pageContext.request.contextPath}/boletos_asiento.html";
		        }
		   	 });
			}
		}
	</script>

	</body>
</html>
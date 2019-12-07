<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cine - Tarea04</title>
	<link href="<c:url value='/static/css/styles.css' />" rel="stylesheet"></link>
	<link type="text/css" href="<c:url value='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css' /> " rel="stylesheet" /></link>  
    
	<script type="text/javascript" 
		src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js' /> " ></script>
	<script type="text/javascript" 
		src="<c:url value='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js' /> "></script>  
</head>
  
<body>
	
  <div class="grid-container">
		
		
		<div class="title-container">
			<div class="title">Cine - Tarea 04</div>
		</div>

	
	
		<div class="carrusel">
			
			<div class="Peliculas">
				<img id="movie1" src="<c:url value= "/static/img/img1.jpg" /> " alt="Superman">
				<div class="text" id="nombrePeliculaLabel">Superman</div>
			</div>

			<div class="Peliculas">
				<img id="movie2" src="<c:url value= "/static/img/img2.jpg" /> " alt="Batman V Superman">
				<div class="text" id="nombrePeliculaLabel">Batman VS Superman</div>
			</div>

			<div class="Peliculas">
				<img id="movie3" src="<c:url value= "/static/img/img3.jpg" /> " alt="Aquaman">
				<div class="text" id="nombrePeliculaLabel">Aquaman</div>
			</div>

			<div class="Peliculas">
				<img id="movie4" src="<c:url value= "/static/img/img4.jpg" /> " alt="Shazam">
				<div class="text" id="nombrePeliculaLabel">Shazam</div>
			</div>

			<div class="Peliculas">
				<img id="movie5" src="<c:url value= "/static/img/img5.jpg" /> " alt="Joker">
				<div class="text" id="nombrePeliculaLabel">Joker</div>
			</div>

			<div class="Peliculas">
				<img id="movie6" src="<c:url value= "/static/img/img6.jpg" /> " alt="Green Lantern">
				<div class="text" id="nombrePeliculaLabel">Linterna Verde</div>
			</div>

			<a class="prev" onclick="siguientePelicula(-1)">&#10094;</a>
  			<a class="next" onclick="siguientePelicula(1)">&#10095;</a>

		</div>
		
		
		<br>

		
		
		<div class="datos-pelicula">
		
			<div class="campos">
			
				<form:form method="post" action="save_pelicula.html" modelAttribute="funcion">
				
					<div class="nombre-div">
						<h1>Nombre: </h1>
						<form:input type="text" path="nombrePelicula" class="nombrePelicula" id = "nombrePelicula" readonly="true"/>
					</div>
		
					<div class="fecha-div">
						<h1>Fecha función: </h1>
						<form:input type="text" path="fecha" id = "date"/>
						
					</div>
		
					<div class="cine-div">
						<h1>Busca tu cine: </h1>
						<form:input type="text" path="cine" id = "cines"/>
					</div>
					
					<div class="enter-div">
						<input type="submit" id="continue-button" value="Continue" >
					</div>
					
				</form:form>
	
			</div>
			

	</div>
	
	
		<script type="text/javascript"> 


		function split(val){
			return val.split( /,\s*/ ); 
		}
		
		function extractLast( term ) {     
			return split( term ).pop(); 
		}
		var indice;
		$(document).ready(function(){
			 
			var http = new XMLHttpRequest();
		    var url = '${pageContext.request.contextPath}/get_info_pelicula.html';
		    var params = "id_pelicula=0";

		    http.open("GET", url+"?"+params, true);
		    http.send("id_pelicula?=0");
		    var data= http.responseText;
		    
		    console.log(data);
			$("#cines").autocomplete({
				
				source: '${pageContext.request.contextPath}/get_cines.html'
				
			});
			
			$("#date").datepicker();
			

		})
		
		
		var indice = 0
		muestraPeliculas(0)
		function siguientePelicula(n){
			
				
				var index  = indice +=n;
				muestraPeliculas(index);
			
				
			
			
			
		}


		function muestraPeliculas(n){
			var i;
			var peliculas = document.getElementsByClassName("Peliculas");
			var mb = document.getElementById("nombrePeliculaLabel");
			if(n >= 6) {
				
				indice = 0;
				n = 0
			}
			
			if(n < 0){
				indice = 5;
				n = 5
			}
			switch(n) {
				case 0:
					$(".nombrePelicula").val('Superman');
					break;
				case 1:
			    // code block
			    $(".nombrePelicula").val('Batman VS Superman');
			    break;
			  	case 2:
			    // code block
			    $(".nombrePelicula").val('Aquaman');
			    break;
			  	case 3:
				  $(".nombrePelicula").val('Shazam');
				    break;
			  	case 4:
				   // code block
				    $(".nombrePelicula").val('Joker');
				    break;
			  	case 5:
				    // code block
				    $(".nombrePelicula").val('Linterna Verde');
				    break;
				default:
					break;
			  	
			    	
			}
			
			for(i = 0; i < peliculas.length; i++){
				peliculas[i].style.display = "none";

			}
 			peliculas[indice].style.display = "block";	

 			
			

		

		}
		
	
	
	</script>

</body>
</html>
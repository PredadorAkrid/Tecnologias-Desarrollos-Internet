<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="js/scripts.js" type="text/javascript" charset="utf-8" async defer></script>
  <div id="cajacookies">
    <p><button onclick="aceptarCookies()"  class="pull-right"><i class="fa fa-times"></i> Aceptar y cerrar éste mensaje</button>
    Éste sitio web usa cookies, si permanece aquí acepta su uso.
    Puede leer más sobre el uso de cookies en nuestra <a href="politicas.html">política de privacidad</a>.
    </p>
  </div>

  <title>Práctica 04</title>
	<meta charset="UTF-8">
  <link  rel="stylesheet" type="text/css" href="css/estilos.css">
  

  <TITLE> Título</TITLE>
  
</head>
  <body>
    <div class="progress">
      <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">0%</div>
  </div>
  <br/>
  <div class="information" style="display:none;">              
      <div class="alert alert-info">Lorem Ipsum...</div>
  </div>
  <!--Ejemplo de título -->
	<h1 align="center">Cuarta Práctica</h1>
	<h2 align= "center"> La tierra y nuestro impacto a lo largo del tiempo</h2>
  <!-- Insersión de imagen -->
  	<div align="right" ><img src="img/ciencias01.png" border="1" alt="Logotipo Facultad de Ciencias UNAM" width="150" height="150"></div>
  
  <h3 align="center">
    <p>¿Qué es el Antropoceno?</p>
    <p>Es un término utilizado para designar la era geológica actual que se distingue por el papel central que desempeña la humanidad para propiciar significativos cambios geológicos. Estas transformaciones han sido provocadas por factores como la urbanización, la utilización de combustibles fósiles, la devastación de bosques, la demanda de agua o la explotación de recursos marítimos. </p>
    <div align="center" ><img src="img/etapas.jpg" border="1" alt="antropoceno" width="200" height="200"></div>
  </h3>
  <!--Ejemplo de listas -->
	<p align="center">Te podría interesar:</p>
	
  	<div id="listaNoOrdenada">
    <ul>
        <li><a href="http://www.wwf.org.mx/que_hacemos/cambio_climatico_y_energia/">¿Qué es el cambio climático?</a></li>
        <li><a href="https://www.youtube.com/watch?v=zK7MLX_UhrU">Pequeña reflexión</a></li>
        <li><a href="https://www.excelsior.com.mx/global/en-2050-el-planeta-podria-ser-inhabitable-segun-la-onu/1323478">¿Cuánto tiempo nos queda?</a></li>
        <li><a href="https://www.playgroundmag.net/now/imagenes-satelite-revelan-impacto-Tierra_22645009.html">Imágenes</a></li>
    </ul>
    
    </div>
<h4 align="center">Contacto


  <form name="fvalida" id = "formulario">
    <input type="text" name="name" id="nombre" placeholder="Nombre"><br>
    <input type="text" name="paterno" id="apellido" placeholder="Apellido"><br>
    <input type="text" name="correo" id="email" placeholder="email"><br>
    <button onclick = "valida_envia()" type="button" id = "valida_envia()" >Enviar</button><br>

  </form>
   


</h4>
 
<h5 align="center">
  <button onclick = "funcionFinal()" aling = "center">Presióname</button>
  <div id='imagencargando'></div>
    
</h5> 


</body>
</html>
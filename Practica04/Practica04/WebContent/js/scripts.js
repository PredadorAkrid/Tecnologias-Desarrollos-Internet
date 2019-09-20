
/* ésto comprueba la localStorage si ya tiene la variable guardada */
function compruebaAceptaCookies() {
  if(localStorage.aceptaCookies == 'true'){
    cajacookies.style.display = 'none';
  }
}

/* aquí guardamos la variable de que se ha
aceptado el uso de cookies así no mostraremos
el mensaje de nuevo */
function aceptarCookies() {
  localStorage.aceptaCookies = 'true';
  cajacookies.style.display = 'none';
}
 
 

function valida_envia(){
	var nombre = document.getElementById('nombre');
	var apellido = document.getElementById('apellido')
	var email = document.getElementById('email')
	var regNombre = /^[a-zA-Z]+$/;
	var regApellido = /^[a-zA-Z]+$/;
	var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
	
	if(regNombre.test(nombre.value)){
    	if(regApellido.test(apellido.value)){
	    	if (emailRegex.test(email.value)){
	   			alert("Se ha registrado correctamente la información.");
	 		}else {
	   			alert("La dirección de email es incorrecta.");
	  		}
  		
  		}else{
  			alert("Apellido inválido")
  		}
	}else{
    	alert("Nombre inválido");
	}
	

}
/* ésto se ejecuta cuando la web está cargada */

function funcionFinal(){
	imagen = '<img src="./img/animales.jpg" alt="cargando..." />'
	document.getElementById('imagencargando').innerHTML = imagen;
}


<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>

  
  	<h1>Ejemplo basico sin jsp</h1>
  	<p>Vamos a crear un servlet para mostrar la REQUEST y RESPONSE</p>
	<p>El servlet sera el encargado de pintar la respuesta a pelo , sin usar una JSP</p>

	<a class="btn btn-primary btn-block mb-2" href="controlador1">PETICION GET</a>
	
	<a class="btn btn-primary btn-block mb-2" href="controlador1?param1=value1&param2=value2&param3=value3">PETICION GET CON PARAMETROS</a>
	<a class="btn btn-primary btn-block mb-2" href="controladorNoExistente">PETICION GET - 404</a>
	<a class="btn btn-primary btn-block mb-2" href="controlador1?paramNavegador=navegdor">NAVEGADOR</a>

  <%@ include file="../includes/footer.jsp" %>
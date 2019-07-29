<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  
  	<h1>Recargar o redirigir a otra p�gina con HTML</h1>
  	<br>
  	<h3>C�digo HTML en etiquetas META para refrescar una p�gina o hacer una redirecci�n a otra p�gina autom�ticamente.</h3>
	<br>
	<section class="p-3 mb-3 bg-light">
		<p>La etiqueta META que se hace para indicar al navegador un refresco o una redirecci�n tiene la forma siguiente:</p>
		<p><code>&lt;META HTTP-EQUIV="REFRESH" CONTENT="5;URL=http://www.desarrolloweb.com"&gt;</code></p>
		<p>Como vemos, el atributo HTTP-EQUIV se indica una informaci�n al navegador como si fuera enviada en la cabecera del http, es decir, la instrucci�n enviada en una etiqueta META que utiliza HTTP-EQUIV es equivalente a si �sta se hubiera enviado en la cabecera del http. En este caso, que lo tenemos igualado a REFRESH, es para indicar queremos hacer un refresco de la p�gina.</p>
		<p>En el atributo CONTENT indicamos las caracter�sticas del refresco. El valor asociado contiene dos partes, primero el tiempo en segundos de espera para hacer el refresco o redirecci�n y la URL a la que enviar el navegador.</p>
	 </section>
  <%@ include file="../includes/footer.jsp" %>
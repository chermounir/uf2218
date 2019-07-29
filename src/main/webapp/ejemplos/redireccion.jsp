<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  
  	<h1>Recargar o redirigir a otra página con HTML</h1>
  	<br>
  	<h3>Código HTML en etiquetas META para refrescar una página o hacer una redirección a otra página automáticamente.</h3>
	<br>
	<section class="p-3 mb-3 bg-light">
		<p>La etiqueta META que se hace para indicar al navegador un refresco o una redirección tiene la forma siguiente:</p>
		<p><code>&lt;META HTTP-EQUIV="REFRESH" CONTENT="5;URL=http://www.desarrolloweb.com"&gt;</code></p>
		<p>Como vemos, el atributo HTTP-EQUIV se indica una información al navegador como si fuera enviada en la cabecera del http, es decir, la instrucción enviada en una etiqueta META que utiliza HTTP-EQUIV es equivalente a si ésta se hubiera enviado en la cabecera del http. En este caso, que lo tenemos igualado a REFRESH, es para indicar queremos hacer un refresco de la página.</p>
		<p>En el atributo CONTENT indicamos las características del refresco. El valor asociado contiene dos partes, primero el tiempo en segundos de espera para hacer el refresco o redirección y la URL a la que enviar el navegador.</p>
	 </section>
  <%@ include file="../includes/footer.jsp" %>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>

  
  	<h1>Ejemplo basico con jsp</h1>
  	<p></p>
  	<a class="btn btn-primary" href="useragent">Detectar Navegador que esta usando</a>
  	
  	<h2>Respuesta</h2>
	<p>Navigador: ${navigador }</p>
	<p>Es Movil: ${movil }</p>
  <%@ include file="../includes/footer.jsp" %>
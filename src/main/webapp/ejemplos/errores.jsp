<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>

  
<h1>Manejo de errores a nivel de p�gina</h1>
<p>Las p�ginas de error sirven para informar a los visitantes de tu sitio web sobre los problemas del sitio. Cada tipo de problema se corresponde con un c�digo establecido. Un visitante que acceda a una URL inexistente ver� un error 404, mientras que un usuario que intente acceder a un archivo Errores en el c�digo ver� un error 500.</p>
 
<h2>Error Interno 500</h2>
<p>Una p�gina JSP puede especificar su propia p�gina JSP de error predeterminada de una excepci�n que se produce dentro de ella, mediante el c�digo de error JSP. De este modo, la p�gina JSP puede especificar su propio manejo de un error. Si una p�gina JSP no contiene un c�digo de error JSP, el error se redirige a la p�gina JSP de error a nivel de aplicaci�n.</p>
<p>A continuaci�n se muestra un ejemplo de la inclusi�n del manejo de errores a nivel de p�gina:</p>
<p>Cree una p�gina error.jsp individual que maneje los errores que se producen en todas las dem�s p�ginas JSP de la aplicaci�n. Para especificar una p�gina JSP como una p�gina error, utilice esta directiva de p�gina JSP:</p>
  <code> &lt;%@ page isErrorPage="true" %&gt;</code>
<p>En la p�gina error.jsp, utilice <code>exception.printStackTrace(new java.io.PrintWriter(out));</code> para recuperar m�s informaci�n sobre los mensajes de excepci�n y de visualizaci�n.</p>
<p>Incluya la p�gina JSP error en otras p�ginas JSP, utilizando esta directiva JSP para especificar que si se producen excepciones en la p�gina actual, se env�e la solicitud a errorHandler.jsp:</p>
<code>&lt;%@ page errorPage="/error.jsp" %&gt;</code>
 <h2>Error 404:</h2>
 <br>
 <p>Se puede crear una p�gina de error personalizada. Para ello basta con nombrar a la p�gina con el c�digo HTTP, por ejemplo 404.jsp, y ubicarla dentro del directorio llamado webapp. Si forzamos un error de tipo 404-Not found veremos esta p�gina, para los dem�s errores se seguir� mostrando error.jsp que act�a siempre como p�gina de error por defecto.</p>
 <p>Ejemplo: <a href="ersdg" target="_black">Ejemplo Error 404</a> </p>
 <%@ include file="../includes/footer.jsp" %>
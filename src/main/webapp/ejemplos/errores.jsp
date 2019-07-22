<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>

  
<h1>Manejo de errores a nivel de página</h1>
<p>Las páginas de error sirven para informar a los visitantes de tu sitio web sobre los problemas del sitio. Cada tipo de problema se corresponde con un código establecido. Un visitante que acceda a una URL inexistente verá un error 404, mientras que un usuario que intente acceder a un archivo Errores en el còdigo verá un error 500.</p>
 
<h2>Error Interno 500</h2>
<p>Una página JSP puede especificar su propia página JSP de error predeterminada de una excepción que se produce dentro de ella, mediante el código de error JSP. De este modo, la página JSP puede especificar su propio manejo de un error. Si una página JSP no contiene un código de error JSP, el error se redirige a la página JSP de error a nivel de aplicación.</p>
<p>A continuación se muestra un ejemplo de la inclusión del manejo de errores a nivel de página:</p>
<p>Cree una página error.jsp individual que maneje los errores que se producen en todas las demás páginas JSP de la aplicación. Para especificar una página JSP como una página error, utilice esta directiva de página JSP:</p>
  <code> &lt;%@ page isErrorPage="true" %&gt;</code>
<p>En la página error.jsp, utilice <code>exception.printStackTrace(new java.io.PrintWriter(out));</code> para recuperar más información sobre los mensajes de excepción y de visualización.</p>
<p>Incluya la página JSP error en otras páginas JSP, utilizando esta directiva JSP para especificar que si se producen excepciones en la página actual, se envíe la solicitud a errorHandler.jsp:</p>
<code>&lt;%@ page errorPage="/error.jsp" %&gt;</code>
 <h2>Error 404:</h2>
 <br>
 <p>Se puede crear una página de error personalizada. Para ello basta con nombrar a la página con el código HTTP, por ejemplo 404.jsp, y ubicarla dentro del directorio llamado webapp. Si forzamos un error de tipo 404-Not found veremos esta página, para los demás errores se seguirá mostrando error.jsp que actúa siempre como página de error por defecto.</p>
 <p>Ejemplo: <a href="ersdg" target="_black">Ejemplo Error 404</a> </p>
 <%@ include file="../includes/footer.jsp" %>
<%@ include file="../../includes/header.jsp"%>
<%@ include file="../../includes/navbar.jsp"%>
<style>

.bandera{
	width: 40px;
}
    
</style>
<h1>Idiomas:</h1>

<h2>Recuperar properties desde Servlet</h2>
<p>Usaremos la clase de la Api Util de java java.util.ResourceBundle para cargar el fichero de properties, no hace falta indicar el locale o la extensión del idioma porque se le pasa como argumento al metodo:</p>

<code>ResourceBundle.getBundle ( PATH_PROPERTIES, locale );</code>

<p>Para este ejemplo contemplamos que guardamos el idioma seleccionado por el usuario en login.jsp en session, variable de tipo String "language". Pero tambien podriamos haber usado el locale del navegador del usuario request.getLocale()</p>

<p>Si no existe el idioma carga un locale por defecto "es_ES"</p>

<p>Codigo:</p>

<p>//Locale por defecto Español</p>
<code>Locale locale = new Locale("es_ES");</code>

<p>//obtener lenguaje de la session del usuario</p>
<code>String language = (String) request.getSession().getAttribute("language");

if ( language != null ){
locale = new Locale(language);
}
log.debug("language: " + language + " locale: " + locale);</code>


<p>//Cargar resourceBundle o properties dependiente del idioma</p>

<p>// Debemos indicara el package donde se encuentra y el nombre del /properties sin la extension del locale </p>
<code>ResourceBundle messages = ResourceBundle.getBundle("i18n.i18nmessages", locale );</code>
<br>
${mensajeIdioma }
<ol>
  <li><a href="i18n?is=es_ES&ruta=<%= request.getRequestURI() %>"><img class="bandera" src="resources/img/es.png" alt="" > españa</a></li>
  <li><a href="i18n?is=en_EN&ruta=<%= request.getRequestURI() %>"><img class="bandera" src="resources/img/br.png" alt="" > EEUU</a></li>
  <li><a href="i18n?is=eu_ES&ruta=<%= request.getRequestURI() %>"><img class="bandera" src="resources/img/eu.png" alt="" > IKURRINA</a></li>
</ol>

<h2>Recuperar properties desde JSP</h2>
<p>En las JSP usaremos el TagLibrary de JSTL para poder acceder a los properties multidiomas:</p>

<code>&lt;fmt:message key="navmenu.op3" /&gt;</code>

<p>Antes de poder usar este tag, debemos realizar una serie de pasos:</p>

<p>1.- Importar las librerias de los TagLibs a usar CORE y FMT</p>

<code>&lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%&gt;</code>
<code>&lt;%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%&gt;</code>

<p>2.- Crear una variable para que recoja el valor del idioma guardado en session</p>

<code>&lt;c:set var="language" value="${not empty sessionScope.language ? sessionScope.language : 'es_ES'}" scope="session" /&gt;</code>

<p>3.- Setear el locale para el TagLig FMT</p>
<code>&lt;fmt:setLocale value="${language}" /&gt;</code>

<p>4.- Cargar fichero de properties </p>
<code>&lt;fmt:setBundle basename="i18n.i18nmessages" /> </code>

<p>5.- Indicar el idioma que usamos al HMLT<p>
<code>&lt;!DOCTYPE&gt;</code>
<code>&lt;html lang="${language}"&gt;</code>
<code>&lt;head&gt;</code>

<p>6.- Usarlo donde queramos usando el tag </p>
<code>&lt;fmt:message key="key.name"/&gt;</code>

<h3>Ejemplo:</h3>
<%
		//@see includes/header.jsp para la gestion del idioma
	%>
	
	<p>locale:  ${locale}</p>
	
	<p class="h3 text-danger"><fmt:message key="menu.ejemplos" /></p>
	<p class="h3 text-danger"><fmt:message key="menu.inicio" /></p>

<%@ include file="../../includes/footer.jsp"%>
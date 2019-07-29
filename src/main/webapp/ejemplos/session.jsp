<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  
  	<h1>Session</h1>
	  	<br>
	<section class="p-3 mb-3 bg-light">
	<p>En JSP las acciones que se pueden realizar sobre las sesiones se lleva a cabo mediante la interface HttpSession y los métodos que implementa. Esta interfaz está incluida dentro del paquete javax.servlet.http y es utilizada por el contenedor de páginas JSP para crear una sesión entre el servidor y el cliente. Para obtener la sesión de un usuario se utiliza el método getSession() que devuelve una interfaz de tipo HttpSession.</p>
	<code>HttpSession sesion=request.getSession();</code>
 	<p>En JSP las acciones que se pueden realizar sobre las sesiones se lleva a cabo mediante la interface HttpSession y los métodos que implementa. Esta interfaz está incluida dentro del paquete javax.servlet.http y es utilizada por el contenedor de páginas JSP para crear una sesión entre el servidor y el cliente. Para obtener la sesión de un usuario se utiliza el método getSession() que devuelve una interfaz de tipo HttpSession.</p>

	<code>HttpSession sesion=request.getSession();</code>

	<p>Una vez creado el objeto de tipo sesión es posible acceder a una serie de datos sobre la misma. Uno de estos datos es idSession que devuelve un identificador único asociado a una sesión:</p>

	<code>out.println('IdSesion: '+sesion.getId()); </code>


<p>Es posible conocer el momento en el que se creó la sesión:</p>

<code>Date momento=new Date(sesion.getCreationTime());</code>
<code>out.println('Creación: '+momento); </code>


<p>También se puede conocer la fecha y hora de la última vez que el cliente accedió al servidor con el que se creó la sesión, utilizando el método getLastAccesedTime():</p>

<code> Date acceso=new Date(sesion.getLastAccessedTime());</code>
<code>out.println('Último acceso: '+acceso+'; </code>

<p>Teniendo en cuenta el momento en el que ser creó la sesión y la última vez que se accedió al servidor, se puede conocer el tiempo que lleva el cliente conectado al servidor, o lo que es lo mismo el tiempo que lleva el usuario navegando por la páginas JSP:</p>


<code> long longDuracion=sesion.getLastAccessedTime();</code>
<code>sesion.getCreationTime();</code>

<code>Date duracion=new Date(longDuracion);</code>
<code>out.println('Duracion:'+duracion.getMinutes()+'min.'+duracion.getSeconds()+'seg'); </code>

<p>La interfaz HttpSession ofrece el método isNew() mediante el cual es posible saber si la sesión creada es nueva o se está tomando de una previamente creada:</p>
</code>out.println('nueva: '+sesion.isNew()); </code>
<p>Si se ejecuta el ejemplo la primera vez el método devolverá true, ya que previamente no había ninguna sesión y ha sido creada en ese instante. Si se recarga la página devolverá false ya que la sesión ya ha sido creada. Las sesiones no necesitan ningún tipo de mantenimiento, una vez creadas no es necesario utilizarlas de forma obligatoria o tener que refrescar los datos asociados a las mismas, se deben ver como una variable más con la diferencia que pueden ser utilizadas en cualquier página independientemente del lugar en el que hayan sido creadas.Una vez creado el objeto de tipo sesión es posible acceder a una serie de datos sobre la misma. Uno de estos datos es idSession que devuelve un identificador único asociado a una sesión:</p>

<code>out.println('IdSesion: '+sesion.getId()); </code>

<p>Es posible conocer el momento en el que se creó la sesión:<p>
<code>out.println('Creación: '+sesion.getCreationTime());</code>
<code>Date momento=new Date(sesion.getCreationTime());</code>
<code>out.println('Creación: '+momento); </code>


<p>También se puede conocer la fecha y hora de la última vez que el cliente accedió al servidor con el que se creó la sesión, utilizando el método getLastAccesedTime():</p>

<code> Date acceso=new Date(sesion.getLastAccessedTime());</code>
<code>out.println('Último acceso: '+acceso+'; </code>

<p>Teniendo en cuenta el momento en el que ser creó la sesión y la última vez que se accedió al servidor, se puede conocer el tiempo que lleva el cliente conectado al servidor, o lo que es lo mismo el tiempo que lleva el usuario navegando por la páginas JSP:</p>


<code> long longDuracion=sesion.getLastAccessedTime();</code>
<code>sesion.getCreationTime();</code>
<code>Date duracion=new Date(longDuracion);</code>
<code>out.println(“Duracion:'+duracion.getMinutes()+'min.'+duracion.getSeconds()+'seg'); </code>

<p>La interfaz HttpSession ofrece el método isNew() mediante el cual es posible saber si la sesión creada es nueva o se está tomando de una previamente creada:</p>
<code>out.println('nueva: '+sesion.isNew()); </code>
<p>Si se ejecuta el ejemplo la primera vez el método devolverá true, ya que previamente no había ninguna sesión y ha sido creada en ese instante. Si se recarga la página devolverá false ya que la sesión ya ha sido creada. Las sesiones no necesitan ningún tipo de mantenimiento, una vez creadas no es necesario utilizarlas de forma obligatoria o tener que refrescar los datos asociados a las mismas, se deben ver como una variable más con la diferencia que pueden ser utilizadas en cualquier página independientemente del lugar en el que hayan sido creadas.</p>
</section>

	
  <%@ include file="../includes/footer.jsp" %>
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<div id="page-content" class="row">
	<div id="region-main-box" class="col-xs-12">
		<section id="region-main">
			<div class="card card-block">
				<span class="notifications" id="user-notifications"></span>
				<div role="main">
					<span id="maincontent"></span>
					<h2>Java Session en aplicaciones web</h2>
					<div class="box generalbox center clearfix p-y-1">
						<div class="no-overflow">
							<p>
								<strong>Uno de los conceptos que más problemas produce
									cuando comenzamos a trabajar con aplicaciones web en Java es el
									concepto de java session (HttpSession)</strong>&nbsp;que sirve para
								almacenar información entre diferentes peticiones
								HTTP&nbsp;&nbsp;ya que este protocolo es stateless (sin estado).
								Así pues en muchas ocasiones nos encontraremos con el problema
								de compartir estado (datos usuario)&nbsp;entre un conjunto
								amplio de páginas de nuestra Aplicación.<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<img
									src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/datosusuario.gif"
									alt="" width="457" height="374" role="presentation"
									class="img-responsive atto_image_button_text-bottom"><br>
							</p>
							<p>
								<br>
							</p>
							<p>
								Para solventar este problema en la plataforma Java EE se usa de
								forma muy habitual<strong>&nbsp;la clase HttpSession
									que tiene una estructura de HashMap (Dicccionario)</strong>&nbsp;y
								&nbsp;permite almacenar cualquier tipo de objeto en ella de tal
								forma que pueda ser compartido por las diferentes páginas que
								como usuarios utilizamos.<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<img
									src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/hashmap.gif"
									alt="" width="499" height="374" role="presentation"
									class="img-responsive atto_image_button_text-bottom"><br>
							</p>
							<h5>Funcionamiento</h5>
							<p>
								<br>
							</p>
							<p>
								El funcionamiento del sistema de sessiones es relativamente
								sencillo.&nbsp;<strong>Cada vez que un usuario crea una
									session accediendo a una página (que la genere) se crea
									un&nbsp;objeto a nivel de Servidor con un HashMap vacío que nos
									permite almacenar la información que necesitamos relativa a
									este usuario.</strong>&nbsp;Realizado este primer paso se envía al
								navegador del usuario una <a class="autolink" title="Cookie"
									href="http://www.campus.formacion.ipartek.com/moodle/mod/url/view.php?id=722">Cookie</a>
								que sirve para identificarle y asociarle el HashMap que se acaba
								de construir para que pueda almacenar información en él. Este
								HashMap puede ser accedido desde cualquier otra página
								permitiéndonos compartir información.<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<img
									src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/creacionSession.gif"
									alt="" width="524" height="374" role="presentation"
									class="img-responsive atto_image_button_text-bottom"><br>
							</p>
							<p>
								<br>
							</p>
							<h5>Usuarios y Sessiones</h5>
							<p>
								<br>
							</p>
							<p>
								El concepto de Session es individual de cada usuario que se
								conecta a nuestra aplicación y la información no es compartida
								entre ellos. Así pues cada usuario dispondrá de su propio
								HashMap en donde almacenar la información que resulte útil entre
								páginas.<br>
							</p>
							<p>
								<img
									src="http://www.campus.formacion.ipartek.com/moodle/pluginfile.php/1996/mod_page/content/1/sessionesusuarios.gif"
									alt="" width="533" height="467" role="presentation"
									class="img-responsive atto_image_button_text-bottom"><br>
							</p>
							<p>
								<br>
							</p>
							<h5>Acceder a la session del usuario</h5>
							<p>
								<br>
							</p>
							<p>
								Desde una <b>JSP </b>se puede acceder a través de la variable <b>session</b>
								que ya esta declarada de forma implícita.
							</p>
							<p>
								<br>
							</p>
							<p>
								Desde un <b>Servlet </b>se puede conseguir la session del
								usuario desde la <b>request </b>con la siguiente linea:
							</p>
							<pre style="text-align: center;">import javax.servlet.http.HttpSession;<br>
							</pre>
							<pre style="text-align: center;">HttpSession session = request.getSession();</pre>
							<p>
								<br>
							</p>
							<p>Para marcar la caducidad de la session del usuario se
								puede usar el siguienete metodo:</p>
							<p style="text-align: center;">
								session.setMaxInactiveInterval(60);&nbsp; // 60 segundos&nbsp;<br>
							</p>
							<p style="text-align: left;">
								<i><span>*</span>En caso de no especificar el propio
									servidor tiene un tiempo de expiración.</i>
							</p>
						</div>
					</div>
					<div class="modified">Última modificación: lunes, 17 de
						septiembre de 2018, 10:59</div>
				</div>

			</div>
		</section>
	</div>
</div>



<%@ include file="../includes/footer.jsp"%>
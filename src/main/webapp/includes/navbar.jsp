<%@page import="com.ipartek.formacion.controller.VideoController"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><i class="fab fa-java fa-2x"></i> JEE</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item mr-4">
           <a class="navbar-brand" href="index.jsp"><i class="fas fa-home"></i> <fmt:message key="menu.inicio" /></a></li>
      <li class="nav-item mr-4"><a class="navbar-brand" href="backoffice/videos"><i class="fab fa-youtube"></i> Videos</a></li>
     
	   <c:if test="${usuario == null}">
      <li class="nav-item mr-4">
	        	<a class="navbar-brand" href="login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>      
	  </li>	
	  </c:if> 
	  <c:if test="${usuario != null}">
	  <li class="nav-item mr-4">
		   <div class="dropdown">
			  <button class="navbar-brand btn btn-light mb-2 btn-block" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    <i class="fas fa-list"></i> Videos Visualizados
			  </button>
				  <div class="dropdown-menu cien overflow-hidden" aria-labelledby="dropdownMenuButton">
				  	<c:forEach items="${videosVistos}" var="vv"> 
				    	<a class="dropdown-item" href="backoffice/videos?op=<%=VideoController.OP_DETALLE%>&id=${vv.value.id}">(${vv.key}) ${vv.value.nombre}</a>
				    </c:forEach>				    
				  </div>
			</div>
	   </li>
	  <li class="nav-item mr-4 pt-2">
	      <i class="fas fa-user-alt"></i> ${usuario}       
	  </li>	
	   <li class="nav-item mr-4">
           <a class="navbar-brand" href="logout"><i class="fas fa-sign-out-alt"></i> Logout </a>      
	  </li>
	  
	   </c:if>	
	  
    </ul>
  </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <ul class="navbar-nav">
      
        <li class="nav-item mr-4"><a href="i18n?is=es_ES&ruta=<%= request.getRequestURI() %>"><img class="bandera ${sessionScope.idiomaSeleccionado != 'es_ES' ? 'inactive': ''  }" src="resources/img/es.png" alt="" > ES</a></li>
        <li class="nav-item mr-4"><a href="i18n?is=en_EN&ruta=<%= request.getRequestURI() %>"><img class="bandera ${sessionScope.idiomaSeleccionado != 'en_EN' ? 'inactive': ''  }" src="resources/img/br.png" alt="" > EEUU</a></li>
       <li  class="nav-item mr-4"><a href="i18n?is=eu_ES&ruta=<%= request.getRequestURI() %>"><img class="bandera ${sessionScope.idiomaSeleccionado != 'eu_ES' ? 'inactive': ''  }" src="resources/img/eu.png" alt="" > EU</a></li>
   </ul>
           
</nav>
  <main class="container">
  <div class="row">	
  <div class="col-12">
	<c:if test="${mensaje != null}">
	 	<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p>${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>

	<% //despues de mostrar = null para no mostrar de nuevo %>
	${mensaje=null}
	</c:if>	
	
	</div>	
	  </div>
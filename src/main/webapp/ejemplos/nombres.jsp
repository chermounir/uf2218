<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>
<h1>Listado Nombres</h1>

	<div class="row">	
		<div class="col-8">		
			
			<form method="get" action="nombres" class="form-inline">			  	
			  <label class="sr-only" for="buscar">Name</label>
			  <input type="search"
			  		 name="buscar"
			  		 id="buscar"
			  		 value="${buscar}"
			  		 required
			  		 class="form-control mb-2 mr-sm-2"  
			  		 placeholder="nombre a buscar">			  		 
			  <button type="submit" class="btn btn-primary mb-2">Buscar</button>
			  <a href="nombres" class="btn btn-danger mb-2 ml-2">Limpiar Filtro</a>
			  
			</form>
		
			<% if ( request.getAttribute("buscar") != null ){ %>
				<p class="text-muted">resultado de <b>${buscar}</b></p>
			<% } else { %>
				<p class="text-muted">No hay coincidencias</b></p>
			<% } %>
			
			
			
			<ul class="list-group">
			  <%
			 	 ArrayList<String> nombres = (ArrayList<String>)request.getAttribute("nombres");
			     for( String nombre : nombres ){
			  %>	
			  		<li class="list-group-item"><%=nombre%></li>
			  <%
			     } // end for
			  %>
			</ul>		
		</div>
				
		<div class="col-4">
			<form method="post" action="nombres" class="">			  	
			  <label class="sr-only" for="nombre">Nombre</label>
			  <input type="text"
			  		 name="nombre"
			  		 id="nombre"			  		 
			  		 required
			  		 class="form-control mb-2 mr-sm-2"  
			  		 placeholder="Nuevo Nombre">			  		 
			  <button type="submit" class="btn btn-block btn-primary mb-2">Dar De Alta</button>
			  
			</form>	
		</div>	
	</div>
	<!-- .row -->
  <%@ include file="../includes/footer.jsp" %>
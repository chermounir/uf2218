<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>

label{
min-width: 70px;
}
input[type=text]{
min-width: 370px;
}
</style>

<h1>formulario</h1>
<br>
<div class="row">	
	<% if ( request.getAttribute("mensaje") != null ){ %>
	 	<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p>${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<%} %>
	</div>	
<div class="row">
<div class="col-12 col-md-5">
  <c:if test="${video.id !=-1 }">
	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${video.codigo}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </c:if>
</div>
<div class="col-12 col-md-7">
<form action="videos" method="post" class="d-inline">
<input type="hidden" name="id" value="${video.id }">
<input type="hidden" name="op" value="<%=VideoController.OP_GUARDAR %>">
	<div>
		<label for="titulo" class="obligatorio">Titulo</label> 
		<input
			type="text" 
			name="nombre" 
			required 
			autofocus 
			pattern=".{2,150}"
			title="min 2 letras, max 150 letras"
			value="${video.nombre }"
			placeholder="min 2 letras, max 150 letras">
	</div>
	<br>
	<div>
		<label for="codigo" class="obligatorio">Codigo</label> 
		<input
			type="text" 
			name="codigo" 
			required 
			pattern=".{11,11}"
			title="11 caracteres" 
			value="${video.codigo }"
			placeholder="11 caracteres">
	</div>
	<br> <br> 
	
<input class="btn btn-primary float-right mr-2" type="submit"  class="myButton" value="${(video.id != -1)?'Modificar':'Crear'}">

	 
</form>
<c:if test="${video.id !=-1 }">
<form action="videos" method="post" class="d-inline">
	<input type="hidden" name="id" value="${video.id }">
	<input type="hidden" name="op" value="<%=VideoController.OP_ELIMINAR %>">
	<input class="btn btn-primary float-right mr-2" type="submit"  class="myButton" value="Eliminar">
</form>

</c:if>
</div>

</div>
<%@ include file="../includes/footer.jsp"%>
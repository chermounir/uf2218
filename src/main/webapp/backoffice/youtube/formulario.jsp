<%@ include file="../../includes/header.jsp"%>
<%@ include file="../../includes/navbar.jsp"%>
<style>

input[type=text]{
min-width: 370px;
}
iframe{
	width: 100%;
    height: 100%;
}
    
</style>

<h1>Formulario:</h1>
<br>

<div class="row ">

<div class="col-12 col-md-7">
<form action="backoffice/videos" method="post" class="d-inline">
<input type="hidden" name="id" value="${video.id }">
<input type="hidden" name="op" value="<%=VideoController.OP_GUARDAR %>">
	<div>
		<label for="titulo" class="d-block h5">Titulo:</label> 
		<input
			type="text" 
			name="nombre" 
			autofocus 
			title="min 2 letras, max 150 letras"
			value="${video.nombre }"
			placeholder="min 2 letras, max 150 letras">
	</div>
	<br>
	<div>
		<label for="codigo" class="d-block  h5">Codigo:</label> 
		<input
			type="text" 
			name="codigo" 
			title="11 caracteres" 
			value="${video.codigo }"
			placeholder="11 caracteres">
	</div>
	<br> <br> 
	
<input class="btn btn-primary btn-block mr-2" type="submit"  class="myButton" value="${(video.id != -1)?'Modificar':'Crear'}">

	 
</form>
<c:if test="${video.id !=-1 }">
 <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-block mt-2" data-toggle="modal" data-target="#exampleModal">
  Eliminar
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Estas seguro de eliminar el registro</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <p>Cuidado porque operación no es reversible</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         <form action="backoffice/videos" method="post" class="d-inline">
			<input type="hidden" name="id" value="${video.id }">
			<input type="hidden" name="op" value="<%=VideoController.OP_ELIMINAR %>">
			<input class="btn btn-primary float-right" type="submit"  class="myButton" value="Eliminar">
		  </form>
      </div>
    </div>
  </div>
</div> 
</c:if>
</div>
<div class="col-12 col-md-5">
  <c:if test="${video.id !=-1 }">
	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${video.codigo}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </c:if>
   <c:if test="${video.id ==-1 }">
     <img class="youtube" src="resources/img/youtube.png" alt="" >
	</c:if>
</div>
</div>
<%@ include file="../../includes/footer.jsp"%>
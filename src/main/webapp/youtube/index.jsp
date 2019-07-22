<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.ipartek.formacion.model.pojo.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<style>
span{
float:right;
}
iframe{
width: 100%}
</style>
  



<div class="container">
 <div class="row">
	      <div class="col-12 col-md-9">	      
	      </div>
	       <div class="col-12 col-md-3">
	      <a href="videos?op=<%=VideoController.OP_NUEVO%>" class="btn btn-primary mb-2 btn-block">Nuevo Video</a>
	      </div>
 </div>
   	<h2>Listado videos</h2>
  <div class="row">
      <c:forEach items="${videos}" var="video">
	      <div class="col-12 col-md-4">
	      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${video.codigo}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	      </div>
	      <div class="col-8 col-md-6">
	      ${video.nombre}<span>
	      </div>
	      <div class="col-4 col-md-2">
	      <a href="videos?op=<%=VideoController.OP_DETALLE%>&id=${video.id}"  class="btn btn-info mb-2 btn-block">DETAILLE</a></span>
	      </div>
      </c:forEach>
		
  </div>
</div>
  <%@ include file="../includes/footer.jsp" %>
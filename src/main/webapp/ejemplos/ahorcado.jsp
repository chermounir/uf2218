<%@page import="com.ipartek.formacion.controller.CalculadoraController"%>
<%@ include file="../../includes/header.jsp"%>
<%@ include file="../../includes/navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
select{
width: 100%;}
</style>
<h1>Ahorcado:</h1>
<br>

<div class="row ">
<div class="col-12 col-md-4">
</div>
<div class="col-12 col-md-4">
<form action="calculadora" method="post" class="d-inline">
	<div>
		<label for="numero1" class="d-block h5">Numero 1:</label> 
		<input
			type="text" 
			name="l1" 
			value=""
			title="min 1, max 1"
			placeholder="min 1, max 1">
	</div>
	<br>
	<br> 
	<select name="op" class="d-block">
   		<option value="<%= CalculadoraController.OP_SUMAR%>">Sumar</option> 
   		<option value="<%= CalculadoraController.OP_RESTAR%>">Restar</option> 
   		<option value="<%= CalculadoraController.OP_MULTIPLICAR%>">Multiplicar</option>
   </select>
	<br> 
	<br>
	
	
<input class="btn btn-primary btn-block mr-2" type="submit"  class="myButton" value="Calcular">

	 
</form>
<br>
<c:if test="${result != null }">
	<h4>Resultado: ${result.resultado }</h4>
</c:if>

</div>
<div class="col-12 col-md-4">

</div>
</div>
<%@ include file="../../includes/footer.jsp"%>
<%@page import="com.ipartek.formacion.controller.CalculadoraController"%>
<%@ include file="../../includes/header.jsp"%>
<%@ include file="../../includes/navbar.jsp"%>

<style>
select{
width: 100%;}
</style>
<h1>Calculadora:</h1>
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
			name="numero1" 
			autofocus 
			value="${result.num1 }"
			 class="form-control"
			placeholder="Escribe numero 1">
	</div>
	<br>
	<div>
		<label for="numero2" class="d-block h5">Numero 2:</label> 
		<input
			type="text" 
			name="numero2" 
			autofocus 
			value="${result.num2 }"
			 class="form-control"
			placeholder="Escribe numero 2">
	</div>
	<br>
	<select name="op" class="d-block custom-select">
	    <option value="">Selecciona opcion</option> 
   		<c:forEach items="<%=CalculadoraController.OPERACIONES%>" var="operacion">
				<option value="${operacion[0]}"  ${(operacion[0]==op)?"selected":""}  >${operacion[1]}</option>				
			</c:forEach>
	</select>
	<br> 
	<br>
	
	
<input class="btn btn-primary btn-block mr-2" type="submit"  class="myButton" value="Calcular">

	 
</form>
<br>
<c:if test="${result != null }">
	<h4>Resultado: 
		<strong><fmt:formatNumber value="${result.resultado }" pattern="#,###.##"/></strong>
	</h4>
</c:if>

</div>
<div class="col-12 col-md-4">

</div>
</div>
<%@ include file="../../includes/footer.jsp"%>
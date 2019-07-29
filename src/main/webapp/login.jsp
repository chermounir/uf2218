<%@ include file="includes/header.jsp" %>
<%@ include file="includes/navbar.jsp" %>
<meta http-equiv="refresh" content="13;URL='http://localhost:8080/uf2218/login'" />    


<div class="row">
<div class="col-12 col-md-4"></div>
<div class="col-12 col-md-4">
   	<h1>Login:</h1>
     	<form action="login" method="post">
          	<input class="float-right mb-2" type="text" name="usuario" placeholder="Tu Nombre Usuario">
   			<br>
   			<input class="float-right mb-2 " type="password" name="pass" placeholder="Contraseña">
   			<br>
   			<input type="submit" class="btn btn-primary btn-block mt-2" value="Entrar"> 
   	    </form>
    </div>
<div class="col-12 col-md-4"></div>
    
</div>
  
  <%@ include file="includes/footer.jsp" %>
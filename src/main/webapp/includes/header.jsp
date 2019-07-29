<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page errorPage="error.jsp" %>  



	<%
		// Gestion del idioma
	%>

	<c:set var="idiomaSeleccionado" 
		   value="${not empty sessionScope.idiomaSeleccionado ? sessionScope.idiomaSeleccionado : 'eu_ES'}" 
		   scope="session" />
	
	<fmt:setLocale value="${idiomaSeleccionado}" />
	<fmt:setBundle basename="i18n.i18nmessages" /> 

	<%
		// end Gestion del idioma
	%>
<!doctype html>
<html lang="en">
  <head>
   <base href="${pageContext.request.contextPath}/">
    <!-- Required meta tags -->
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/vendors/fontawesome-free-5.9.0-web/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="../uf2218/resources/css/styles.css" />
    <title>JEE</title>
   
  </head>
  <body>
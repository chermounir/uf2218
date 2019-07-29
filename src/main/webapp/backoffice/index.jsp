<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navbar.jsp" %>
<%@page import="com.ipartek.formacion.controller.listener.UsuariosLogeadosListener"%>

<h1>BACKOFFICE</h1>

 <%=UsuariosLogeadosListener.usuariosLogeados%>

  <%@ include file="../includes/footer.jsp" %>
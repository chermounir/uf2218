<%@page import="com.ipartek.formacion.controller.VideoController"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">JEE</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active"><a class="nav-link" href="index.jsp">Inicio</a></li>
      <li class="nav-item active"><a class="nav-link" href="videos?op=<%=VideoController.OP_LISTAR%>">Videos</a></li>
    </ul>
  </div>
</nav>
  <main class="container">
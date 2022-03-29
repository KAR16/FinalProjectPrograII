<%--
    Document   : table_historial
    Created on : 31 oct. 2021, 18:07:04
    Author     : Home
--%>
<%@page import="Historial.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="table_files/fonts/icomoon/style.css">

  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="home_files/assets/favicon.ico" />

  <link rel="stylesheet" href="table_files/css/owl.carousel.min.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="table_files/css/bootstrap.min.css">

  <!-- Bootstrap icons-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">

  <!-- Style -->
  <link href="table_files/css/styles.css" rel="stylesheet" />
  <link rel="stylesheet" href="table_files/css/style.css">


  <title>Historial</title>
</head>
<%
    Conectar_Mostrar conexion = new Conectar_Mostrar();
%>
<body>

  <!-- Responsive navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container px-lg-5">
      <a class="navbar-brand text" href="index.html">EduPlat</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
          class="navbar-toggler-icon"></span></button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text">
          <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.html">Inicio</a></li>
          <li class="nav-item"><a class="nav-link" href="team.html">Equipo</a></li>
          <!--<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>-->
        </ul>
      </div>
    </div>
  </nav>


  <div class="content">

    <div class="container">
      <h2 class="mb-5"><i class="bi bi-clock-history"></i>&nbsp;&nbsp;Historial&nbsp;&nbsp;&nbsp;&nbsp;<a
          style="background-color:#ffc107;color: #212529;" class="btn btn-primary btn-sm"
          href="javascript: history.go(-1)">Regresar &nbsp; <i class="bi bi-skip-backward"></i></a></h2>

      <div class="table-responsive">

        <table class="table table-striped custom-table">
          <thead>
            <tr>
              <th scope="col">Actividad</th>
              <th scope="col">Tabla</th>
              <th scope="col">Código Registro</th>
              <th scope="col">Fecha de Modificación</th>
              <th scope="col">Usuario</th>
            </tr>
          </thead>
          <tbody>
            <%                                while (conexion.rs.next()) {
            %>
            <tr scope="row">
              <td> <%=conexion.rs.getString("ACTIVIDAD")%> </td>
              <td><a href="#"><%=conexion.rs.getString("TABLA")%></a></td>
              <td><%=conexion.rs.getInt("CODIGO_REGISTRO")%> </td>
              <td> <%=conexion.rs.getString("FECHA_MODIFICACION")%></td>
              <td> <%=conexion.rs.getString("USUARIO")%></td>
            </tr>
            <%}%>
          </tbody>
        </table>
      </div>


    </div>

  </div>
  <!-- Footer-->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white text">Copyright &copy; EduPlat 2021</p>
    </div>
  </footer>

  <script src="table_files/js/jquery-3.3.1.min.js"></script>
  <script src="table_files/js/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="table_files/js/main.js"></script>
  <script src="table_files/js/scripts.js"></script>
</body>

</html>

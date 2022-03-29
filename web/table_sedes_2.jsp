<%--
    Document   : table_sedes_2
    Created on : 31 oct. 2021, 14:20:22
    Author     : Home
--%>
<%@page import="java.sql.*"%>
<%@page import="Sede_2.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="table_files/fonts/icomoon/style.css">

  <link rel="stylesheet" href="table_files/css/owl.carousel.min.css">

  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="home_files/assets/favicon.ico" />

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="table_files/css/bootstrap.min.css">

  <!-- Bootstrap icons-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">

  <!-- Style -->
  <link href="table_files/css/styles.css" rel="stylesheet" />
  <link rel="stylesheet" href="table_files/css/style.css">

  <title>Sedes</title>
</head>
<%
   Conectar_Mostrar conexion = new Conectar_Mostrar();
%>
<body>

  <!-- Responsive navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container px-lg-5">
      <a class="navbar-brand text" href="index.jsp">EduPlat</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
          class="navbar-toggler-icon"></span></button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text">
          <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a></li>
          <li class="nav-item"><a class="nav-link" href="team.jsp">Equipo</a></li>
          <!--<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>-->
        </ul>
      </div>
    </div>
  </nav>


  <div class="content">

    <div class="container">
      <h2 class="mb-5"><i class="bi bi-pin-map-fill"></i>&nbsp;&nbsp;Sedes&nbsp;&nbsp;&nbsp;&nbsp;<a
          style="background-color:#ffc107;color: #212529;" class="btn btn-primary btn-sm"
          href="form_agregar_sede.jsp">Agregar Sede &nbsp; <i class="bi bi-person-plus"></i></a></h2>

      <div class="table-responsive">

        <table class="table table-striped custom-table">
          <thead>
            <tr>
              <th scope="col">Código</th>
              <th scope="col">Código Director</th>
              <th scope="col">Código Institución</th>
              <th scope="col">Dirección</th>
              <th scope="col"></th>
            </tr>
          </thead>
          <tbody>
            <%                                while (conexion.rs.next()) {
               %>
            <tr scope="row">
              <td><%=conexion.rs.getInt("ID_SEDE")%>  </td>
              <td> <%=conexion.rs.getInt("ID_DIRECTOR")%>  </td>
              <td><%=conexion.rs.getInt("ID_ESTUDIANTE")%>  </td>
              <td><a href="#"><%=conexion.rs.getString("DIRECCION")%></a></td>
              <td>
                <a href="form_actualizar_sede.jsp?id=<%=conexion.rs.getInt("ID_SEDE")%>" class="more size-icon"><i class="bi bi-pencil-square"></i></a>
                <a href="form_eliminar_sede_2.jsp?id=<%=conexion.rs.getInt("ID_SEDE")%>" class="more size-icon">&nbsp;&nbsp;<i
                    class="bi bi-trash"></i></a>
              </td>
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

<%--
    Document   : table_catedraticos
    Created on : 28/10/2021, 00:15:38
    Author     : alumno
--%>

<%@page import="java.sql.*"%>
<%@page import="Catedratico.Conectar_Mostrar"%>
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


    <title>Catedráticos</title>
</head>
<%
    Conectar_Mostrar conexion = new Conectar_Mostrar();

%>

<body>

    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container px-lg-5">
            <a class="navbar-brand text" href="index.html">EduPlat</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.html">Inicio</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="team.html">Equipo</a></li>
                    <!--<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>-->
                </ul>
            </div>
        </div>
    </nav>


    <div class="content">

        <div class="container">
            <h2 class="mb-5"><i class="bi bi-person-video2"></i>&nbsp;&nbsp;Catedráticos&nbsp;&nbsp;&nbsp;&nbsp;<a
                    style="background-color:#ffc107;color: #212529;" class="btn btn-primary btn-sm"
                    href="form_agregar_catedratico.jsp">Agregar Catedrático &nbsp; <i class="bi bi-person-plus"></i></a>
            </h2>

            <div class="table-responsive">

                <table class="table table-striped custom-table">
                    <thead>
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Dirección</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                      <%                                while (conexion.rs.next()) {
                      %>
                        <tr>
                          <td><%=conexion.rs.getInt("ID_CATEDRATICO")%> </td>
                          <td> <%=conexion.rs.getString("NOMBRE")%> </td>
                          <td><%=conexion.rs.getString("DIRECCION")%> </td>
                            <td>
                                <a href="form_actualizar_catedratico.jsp?id=<%=conexion.rs.getInt("ID_CATEDRATICO")%>" class="more size-icon"><i
                                        class="bi bi-pencil-square"></i></a>
                                <a href="form_eliminar_catedratico.jsp?id=<%=conexion.rs.getInt("ID_CATEDRATICO")%>" class="more size-icon">&nbsp;&nbsp;<i
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

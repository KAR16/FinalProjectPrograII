<%--
    Document   : form_eliminar_sede_2
    Created on : 31 oct. 2021, 15:14:02
    Author     : Home
--%>

<%@page import="Sede_2.Conectar_Eliminar"%>
<%@page import="Sede_2.Conectar_Insertar"%>
<%@page import="Sede_2.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Eliminar Sede</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="home_files/assets/favicon.ico" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <!-- Bootstrap icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="form_files/css/style.css">
</head>
<body>
  <%
      int p_id_sede = Integer.parseInt(request.getParameter("id"));
      Conectar_Eliminar conexion_eliminar = new Conectar_Eliminar(p_id_sede);
  %>
    <div class="registration-form">
      <%                                while (conexion_eliminar.rs.next()) {
      %>
        <form name="Form_eliminar" method="POST">
            <div class="form-icon">
                <span><i class="bi bi-pin-map-fill"></i></span>
            </div>
            <h3 style="text-align: center;margin-bottom: 50px;">Eliminar Sede</h3>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Código" name="txt_id_sede" value="<%=conexion_eliminar.rs.getInt("ID_SEDE")%>" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Código Director" name="txt_id_director" value="<%=conexion_eliminar.rs.getInt("ID_DIRECTOR")%>" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Código Institución" name="txt_id_estudiante" value="<%=conexion_eliminar.rs.getInt("ID_ESTUDIANTE")%>" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="password" placeholder="Dirección" name="txt_direccion" value="<%=conexion_eliminar.rs.getString("DIRECCION")%>" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Eliminar" name="btn_eliminar" class="btn btn-block create-account"/>
                <a style="text-decoration: none;" href="javascript: history.go(-1)"><button type="button" class="btn btn-block create-account">Regresar</button></a>
            </div>
        </form>
        <%
            }
        %>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="form_files/js/script.js"></script>
</body>
</html>

<%
String spar_id_sede, spar_id_director, spar_id_estudiante;

int par_id_sede, par_id_director, par_id_estudiante;
String spar_direccion;

//par_id_cliente=request.getParameter("txt_id_cliente");
spar_id_sede = request.getParameter("txt_id_sede");
spar_id_director = request.getParameter("txt_id_director");
spar_id_estudiante = request.getParameter("txt_id_estudiante");
spar_direccion = request.getParameter("txt_direccion");

if (spar_id_sede != null && spar_id_director != null && spar_id_estudiante != null && spar_direccion != null) {
    par_id_sede = Integer.parseInt(spar_id_sede);
    par_id_director = Integer.parseInt(spar_id_director);
    par_id_estudiante = Integer.parseInt(spar_id_estudiante);

        conexion_eliminar.implementacion_eliminar(par_id_sede, par_id_director, par_id_estudiante, spar_direccion);

        response.sendRedirect("table_sedes_2.jsp");
    }
%>

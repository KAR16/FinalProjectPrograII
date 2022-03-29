<%--
    Document   : form_actualizar_curso
    Created on : 29 oct. 2021, 20:19:18
    Author     : Home
--%>

<%@page import="Curso.Conectar_Actualizar"%>
<%@page import="Curso.Conectar_Insertar"%>
<%@page import="Curso.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar Curso</title>
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
      int p_id_curso = Integer.parseInt(request.getParameter("id"));
      Conectar_Actualizar conexion_act = new Conectar_Actualizar(p_id_curso);
  %>
    <div class="registration-form">
      <%                                while (conexion_act.rs.next()) {
      %>
        <form name="Form_actualizar" method="POST">
            <div class="form-icon">
                <span><i class="bi bi-journal-text"></i></span>
            </div>
            <h3 style="text-align: center;margin-bottom: 50px;">Editar Curso</h3>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Código" name="txt_id_curso" value="<%=conexion_act.rs.getInt("ID_CURSO")%>" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Código Catedrático" name="txt_id_catedratico" value="<%=conexion_act.rs.getInt("ID_CATEDRATICO")%>" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Código Facultad" name="txt_id_facultad" value="<%=conexion_act.rs.getInt("ID_FACULTAD")%>" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="password" placeholder="Nombre" name="txt_nombre" value="<%=conexion_act.rs.getString("NOMBRE")%>" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Actualizar" name="btn_actualizar" class="btn btn-block create-account"/>
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
    String spar_id_curso, spar_id_catedratico, spar_id_facultad ;


    int par_id_curso,par_id_catedratico,par_id_facultad;
    String spar_nombre;

    //par_id_cliente=request.getParameter("txt_id_cliente");
    spar_id_curso = request.getParameter("txt_id_curso");
    spar_id_catedratico = request.getParameter("txt_id_catedratico");
    spar_id_facultad = request.getParameter("txt_id_facultad");
    spar_nombre = request.getParameter("txt_nombre");



    if (spar_id_curso != null && spar_id_catedratico != null && spar_id_facultad!= null && spar_nombre != null ) {
        par_id_curso = Integer.parseInt(spar_id_curso);
        par_id_catedratico = Integer.parseInt(spar_id_catedratico);
        par_id_facultad = Integer.parseInt(spar_id_facultad);
        //par_edad = Integer.parseInt(spar_edad);

        conexion_act.implementacion_actualizar(par_id_curso, par_id_catedratico, par_id_facultad, spar_nombre);

        response.sendRedirect("table_cursos.jsp");
    }
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR</title>
    </head>
    <body>



        <h1>Ingrese los Datos</h1>




        <form >

            <h2>CODIGO CURSO <input type="text"  /></h2>
            <h2>CODIGO CATEDRATICO <input type="text"  /></h2>
            <h2>CODIGO FACULTAD <input type="text"  /></h2>
            <h2>NOMBRE <input type="text"  /></h2>


            <input id="btnActualizar" type="submit" value="GUARDAR " name="btn_guardar" class="btn btn-primary btn-lg"/>
            <div>
                <a href="index.jsp">REGRESAR </a>
            </div>

        </form>

    </body>
</html>

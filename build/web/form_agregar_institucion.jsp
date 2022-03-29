<%--
    Document   : form_agregar_institucion
    Created on : 29 oct. 2021, 18:41:59
    Author     : Home
--%>


<%@page import="Institucion.Conectar_Insertar"%>
<%@page import="Institucion.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String spar_id_institucion;

    int par_id_institucion;
    String spar_nombre;

    //par_id_cliente=request.getParameter("txt_id_cliente");
    spar_id_institucion = request.getParameter("txt_id_institucion");
    spar_nombre = request.getParameter("txt_nombre");



    if (spar_id_institucion != null && spar_nombre != null) {
        par_id_institucion = Integer.parseInt(spar_id_institucion);


        Conectar_Insertar conect_i = new Conectar_Insertar(par_id_institucion, spar_nombre);

        System.out.println(par_id_institucion + spar_nombre);

        response.sendRedirect("table_instituciones.jsp");
    }
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agregar Nueva Instituión</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="home_files/assets/favicon.ico" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <!-- Bootstrap icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="form_files/css/style.css">
</head>
<body>

    <div class="registration-form">
        <form>
            <div class="form-icon">
                <span><i class="bi bi-geo-alt-fill"></i></span>
            </div>
            <h3 style="text-align: center;margin-bottom: 50px;">Nueva Institución</h3>
            <div class="form-group">
                <input type="text" class="form-control item" id="username" placeholder="Código" name="txt_id_institucion" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" id="password" placeholder="Nombre" name="txt_nombre" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Guardar" name="btn_guardar" class="btn btn-block create-account"/>
                <a style="text-decoration: none;" href="javascript: history.go(-1)"><button type="button" class="btn btn-block create-account">Regresar</button></a>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="form_files/js/script.js"></script>
</body>
</html>

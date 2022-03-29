<%-- 
    Document   : form_agregar_estudiante
    Created on : 27/10/2021, 22:39:18
    Author     : alumno
--%>

<%@page import="Estudiante.Conectar_Insertar"%>
<%@page import="Estudiante.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String spar_id_estudiante, spar_edad;

    int par_id_estudiante, par_edad;
    String spar_nombre, spar_direccion;

    //par_id_cliente=request.getParameter("txt_id_cliente");
    spar_id_estudiante = request.getParameter("txt_id_estudiante");
    spar_nombre = request.getParameter("txt_nombre");
    spar_direccion = request.getParameter("txt_direccion");
    spar_edad = request.getParameter("txt_edad");

    if (spar_id_estudiante != null && spar_nombre != null && spar_direccion != null && spar_edad != null) {
        par_id_estudiante = Integer.parseInt(spar_id_estudiante);
        par_edad = Integer.parseInt(spar_edad);
        
        Conectar_Insertar conect_i = new Conectar_Insertar(par_id_estudiante, spar_nombre, spar_direccion, par_edad);

        //System.out.println(par_id_estudiante + spar_nombre + spar_direccion + par_edad);

        //response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSERTAR</title>
    </head>
    <body>
        <h1>Ingrese los Datos</h1>

        <form name="Form_insertar" method="POST">

            <h2>ID ESTUDIANTE <input type="text" name="txt_id_estudiante" required=""/></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" /></h2>
            <h2>DIRECCION <input type="text" name="txt_direccion" /></h2>
            <h2>EDAD <input type="text" name="txt_edad" /></h2>

            <input id="btnGuardar" type="submit" value="GUARDAR " name="btn_guardar" class="btn btn-primary btn-lg"/>
            <div>
                <a href="index.jsp">REGRESAR </a>
            </div>

        </form>
    </body>
</html>

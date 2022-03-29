<%-- 
    Document   : form_agregar_estudiante
    Created on : 27/10/2021, 22:39:18
    Author     : alumno
--%>

<%@page import="Laboratorio.Conectar_Insertar"%>
<%@page import="Laboratorio.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String spar_id_laboratorio, spar_id_curso;

int par_id_laboratorio, par_id_curso;
String spar_nombre;

//par_id_cliente=request.getParameter("txt_id_cliente");
spar_id_laboratorio = request.getParameter("txt_id_laboratorio");
spar_id_curso = request.getParameter("txt_id_curso");
spar_nombre = request.getParameter("txt_nombre");

if (spar_id_laboratorio != null && spar_id_curso != null && spar_nombre != null) {
    par_id_laboratorio = Integer.parseInt(spar_id_laboratorio);
    par_id_curso = Integer.parseInt(spar_id_curso);
        
        Conectar_Insertar conect_i = new Conectar_Insertar(par_id_laboratorio, par_id_curso, spar_nombre);

        response.sendRedirect("table_laboratorios.jsp");

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

            <h2>ID LABORATORIO <input type="text" name="txt_id_laboratorio" required=""/></h2>
            <h2>ID CURSO <input type="text" name="txt_id_curso" required=""/></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" /></h2>

            <input id="btnGuardar" type="submit" value="GUARDAR " name="btn_guardar" class="btn btn-primary btn-lg"/>
            <div>
                <a href="index.jsp">REGRESAR </a>
            </div>

        </form>
    </body>
</html>

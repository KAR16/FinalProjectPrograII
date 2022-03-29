<%-- 
    Document   : form_agregar_estudiante
    Created on : 27/10/2021, 22:39:18
    Author     : alumno
--%>

<%@page import="Sede_2.Conectar_Insertar"%>
<%@page import="Sede_2.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
        Conectar_Insertar conect_i = new Conectar_Insertar(par_id_sede, par_id_director, par_id_estudiante, spar_direccion);

        System.out.println(par_id_sede + par_id_director + par_id_estudiante + spar_direccion);

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

            <h2>ID SEDE <input type="text" name="txt_id_sede" required=""/></h2>
            <h2>ID DIRECTOR <input type="text" name="txt_id_director" required=""/></h2>
            <h2>ID ESTUDIANTE <input type="text" name="txt_id_estudiante" required=""/></h2>
            <h2>DIRECCION <input type="text" name="txt_direccion" /></h2>

            <input id="btnGuardar" type="submit" value="GUARDAR " name="btn_guardar" class="btn btn-primary btn-lg"/>
            <div>
                <a href="index.jsp">REGRESAR </a>
            </div>

        </form>
    </body>
</html>

<%-- 
    Document   : form_agregar_facultad
    Created on : 30 oct. 2021, 9:49:12
    Author     : Home
--%>

<%@page import="Facultad.Conectar_Insertar"%>
<%@page import="Facultad.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String spar_id_facultad, spar_id_sede;

int par_id_facultad, par_id_sede;
String spar_nombre;

//par_id_cliente=request.getParameter("txt_id_cliente");
spar_id_facultad = request.getParameter("txt_id_facultad");
spar_nombre = request.getParameter("txt_nombre");
spar_id_sede = request.getParameter("txt_id_sede");

if (spar_id_facultad != null && spar_nombre != null && spar_id_sede != null) {
    par_id_facultad = Integer.parseInt(spar_id_facultad);
    par_id_sede = Integer.parseInt(spar_id_sede);

        Conectar_Insertar conect_i = new Conectar_Insertar(par_id_facultad, par_id_sede, spar_nombre);

        response.sendRedirect("table_facultades.jsp");
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

            <h2>ID Facultad <input type="text" name="txt_id_facultad" required=""/></h2>
            <h2>ID SEDE <input type="text" name="txt_id_sede" /></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" /></h2>



            <input id="btnGuardar" type="submit" value="GUARDAR " name="btn_guardar" class="btn btn-primary btn-lg"/>
            <div>
                <a href="index.jsp">REGRESAR </a>
            </div>

        </form>
    </body>
</html>

<%-- 
    Document   : form_actualizar_estudiante
    Created on : 29 oct. 2021, 16:58:59
    Author     : Home
--%>

<%@page import="Laboratorio.Conectar_Actualizar"%>
<%@page import="Laboratorio.Conectar_Insertar"%>
<%@page import="Laboratorio.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR</title>
    </head>
    <body>
        <%
            int p_id_laboratorio = Integer.parseInt(request.getParameter("id"));

            Conectar_Actualizar conexion_act = new Conectar_Actualizar(p_id_laboratorio);

        %>


        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_act.rs.next()) {
        %>

        <form name="Form_actualizar" method="POST">

            <h2>CODIGO LABORATORIO <input type="text" name="txt_id_laboratorio" value="<%=conexion_act.rs.getInt("ID_LABORATORIO")%>" /></h2>
            <h2>CODIGO CURSO <input type="text" name="txt_id_curso" value="<%=conexion_act.rs.getInt("ID_CURSO")%>" /></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" value="<%=conexion_act.rs.getString("NOMBRE")%>" /></h2>
            
            <input id="btnActualizar" type="submit" value="GUARDAR " name="btn_guardar" class="btn btn-primary btn-lg"/>
            <div>
                <a href="index.jsp">REGRESAR </a>
            </div>

        </form>
        <%
            }
        %>
    </body>
</html>

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

        conexion_act.implementacion_actualizar(par_id_laboratorio, par_id_curso, spar_nombre);

        response.sendRedirect("table_laboratorios.jsp");
    }
%>

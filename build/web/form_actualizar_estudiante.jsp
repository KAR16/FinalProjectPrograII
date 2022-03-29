<%-- 
    Document   : form_actualizar_estudiante
    Created on : 29 oct. 2021, 16:58:59
    Author     : Home
--%> 
 
<%@page import="Estudiante.Conectar_Actualizar"%>
<%@page import="Estudiante.Conectar_Insertar"%>
<%@page import="Estudiante.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR</title>
    </head>
    <body>
        <%
            int p_id_estudiante = Integer.parseInt(request.getParameter("id"));

            Conectar_Actualizar conexion_act = new Conectar_Actualizar(p_id_estudiante);

        %>


        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_act.rs.next()) {
        %>

        <form name="Form_actualizar" method="POST">

            <h2>CODIGO ALUMNO <input type="text" name="txt_id_estudiante" value="<%=conexion_act.rs.getInt("ID_ESTUDIANTE")%>" /></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" value="<%=conexion_act.rs.getString("NOMBRE")%>" /></h2>
            <h2>DIRECCION <input type="text" name="txt_direccion" value="<%=conexion_act.rs.getString("DIRECCION")%>" /></h2>
            <h2>EDAD <input type="text" name="txt_edad" value="<%=conexion_act.rs.getInt("EDAD")%>" /></h2>

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

        conexion_act.implementacion_actualizar(par_id_estudiante, spar_nombre, spar_direccion, par_edad);

        //response.sendRedirect("index.jsp");
    }
%>

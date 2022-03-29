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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
            <%
            int p_id_sede = Integer.parseInt(request.getParameter("id"));

            Conectar_Eliminar conexion_eliminar = new Conectar_Eliminar(p_id_sede);

        %>
    <body>
        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_eliminar.rs.next()) {
        %>

        <form name="Form_eliminar" method="POST">

            <h2>CODIGO SEDE <input type="text" name="txt_id_sede" value="<%=conexion_eliminar.rs.getInt("ID_SEDE")%>" /></h2>
            <h2>CODIGO DIRECTOR <input type="text" name="txt_id_director" value="<%=conexion_eliminar.rs.getInt("ID_DIRECTOR")%>" /></h2>
            <h2>CODIGO ESTUDIANTE <input type="text" name="txt_id_estudiante" value="<%=conexion_eliminar.rs.getInt("ID_ESTUDIANTE")%>" /></h2>
            <h2>DIRECCION <input type="text" name="txt_direccion" value="<%=conexion_eliminar.rs.getString("DIRECCION")%>" /></h2>

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

        //response.sendRedirect("index.jsp");
    }
%>


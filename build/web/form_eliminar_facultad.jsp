<%-- 
    Document   : form_eliminar_estudiante
    Created on : 29 oct. 2021, 17:00:02
    Author     : Home
--%>


<%@page import="Facultad.Conectar_Eliminar"%>
<%@page import="Facultad.Conectar_Insertar"%>
<%@page import="Facultad.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int p_id_facultad = Integer.parseInt(request.getParameter("id"));

            Conectar_Eliminar conexion_eliminar = new Conectar_Eliminar(p_id_facultad);

        %>


        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_eliminar.rs.next()) {
        %>

        <form name="Form_actualizar" method="POST">

            <h2>CODIGO FACULTAD <input type="text" name="txt_id_facultad" value="<%=conexion_eliminar.rs.getInt("ID_FACULTAD")%>" /></h2>
            <h2>CODIGO SEDE <input type="text" name="txt_id_sede" value="<%=conexion_eliminar.rs.getInt("ID_SEDE")%>" /></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" value="<%=conexion_eliminar.rs.getString("NOMBRE")%>" /></h2>

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
String spar_id_facultad, spar_id_sede;

int par_id_facultad, par_id_sede;
String spar_nombre;

//par_id_cliente=request.getParameter("txt_id_cliente");

spar_id_facultad = request.getParameter("txt_id_facultad");
spar_id_sede = request.getParameter("txt_id_sede");
spar_nombre = request.getParameter("txt_nombre");

if (spar_id_facultad != null && spar_id_sede != null && spar_nombre != null) {
    par_id_facultad = Integer.parseInt(spar_id_facultad);
    par_id_sede = Integer.parseInt(spar_id_sede);

        conexion_eliminar.implementacion_eliminar(par_id_facultad, par_id_sede, spar_nombre);

        //response.sendRedirect("index.jsp");
    }
%>

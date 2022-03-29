<%-- 
    Document   : form_eliminar_estudiante
    Created on : 29 oct. 2021, 17:00:02
    Author     : Home
--%>


<%@page import="Laboratorio.Conectar_Eliminar"%>
<%@page import="Laboratorio.Conectar_Insertar"%>
<%@page import="Laboratorio.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int p_id_laboratorio = Integer.parseInt(request.getParameter("id"));

            Conectar_Eliminar conexion_eliminar = new Conectar_Eliminar(p_id_laboratorio);

        %>


        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_eliminar.rs.next()) {
        %>

        <form name="Form_actualizar" method="POST">

            <h2>CODIGO LABORATORIO <input type="text" name="txt_id_laboratorio" value="<%=conexion_eliminar.rs.getInt("ID_LABORATORIO")%>" /></h2>
            <h2>CODIGO CURSO <input type="text" name="txt_id_curso" value="<%=conexion_eliminar.rs.getInt("ID_CURSO")%>" /></h2>
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

        conexion_eliminar.implementacion_eliminar(par_id_laboratorio, par_id_curso, spar_nombre);

        //response.sendRedirect("index.jsp");
    }
%>

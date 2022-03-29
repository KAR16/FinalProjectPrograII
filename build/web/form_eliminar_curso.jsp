<%-- 
    Document   : form_eliminar_curso
    Created on : 30 oct. 2021, 2:30:37
    Author     : Home
--%>


<%@page import="Curso.Conectar_Eliminar"%>
<%@page import="Curso.Conectar_Insertar"%>
<%@page import="Curso.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int p_id_curso = Integer.parseInt(request.getParameter("id"));

            Conectar_Eliminar conexion_eliminar = new Conectar_Eliminar(p_id_curso);

        %>


        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_eliminar.rs.next()) {
        %>

        <form name="Form_actualizar" method="POST">

            <h2>CODIGO CURSO <input type="text" name="txt_id_curso" value="<%=conexion_eliminar.rs.getInt("ID_CURSO")%>" /></h2>
            <h2>CODIGO CATEDRATICO <input type="text" name="txt_id_catedratico" value="<%=conexion_eliminar.rs.getInt("ID_CATEDRATICO")%>" /></h2>
            <h2>CODIGO FACULTAD <input type="text" name="txt_id_facultad" value="<%=conexion_eliminar.rs.getInt("ID_FACULTAD")%>" /></h2>
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
    String spar_id_curso,spar_id_catedratico,spar_id_facultad;

    int par_id_curso,par_id_catedratico,par_id_facultad;
    String spar_nombre;

    //par_id_cliente=request.getParameter("txt_id_cliente");
    spar_id_curso = request.getParameter("txt_id_estudiante");
    spar_id_catedratico = request.getParameter("txt_id_catedratico");
    spar_id_facultad = request.getParameter("txt_id_facultad");
    spar_nombre = request.getParameter("txt_nombre");

    if (spar_id_curso != null && spar_id_catedratico != null && spar_id_facultad != null && spar_nombre != null ) {
        par_id_curso = Integer.parseInt(spar_id_curso);
        par_id_catedratico= Integer.parseInt(spar_id_catedratico);
        par_id_facultad = Integer.parseInt(spar_id_facultad);

        conexion_eliminar.implementacion_eliminar(par_id_curso,par_id_catedratico, par_id_facultad, spar_nombre);

        //response.sendRedirect("index.jsp");
    }
%>

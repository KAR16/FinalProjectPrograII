<%-- 
    Document   : form_actualizar_curso
    Created on : 29 oct. 2021, 20:19:18
    Author     : Home
--%>

<%@page import="Curso.Conectar_Actualizar"%>
<%@page import="Curso.Conectar_Insertar"%>
<%@page import="Curso.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR</title>
    </head>
    <body>
        <%
            int p_id_curso = Integer.parseInt(request.getParameter("id"));

            Conectar_Actualizar conexion_act = new Conectar_Actualizar(p_id_curso);

        %>


        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_act.rs.next()) {
        %>

        <form name="Form_actualizar" method="POST">

            <h2>CODIGO CURSO <input type="text" name="txt_id_curso" value="<%=conexion_act.rs.getInt("ID_CURSO")%>" /></h2>          
            <h2>CODIGO CATEDRATICO <input type="text" name="txt_id_catedratico" value="<%=conexion_act.rs.getInt("ID_CATEDRATICO")%>" /></h2>
            <h2>CODIGO FACULTAD <input type="text" name="txt_id_facultad" value="<%=conexion_act.rs.getInt("ID_FACULTAD")%>" /></h2>
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
    String spar_id_curso, spar_id_catedratico, spar_id_facultad ;
    

    int par_id_curso,par_id_catedratico,par_id_facultad;
    String spar_nombre;

    //par_id_cliente=request.getParameter("txt_id_cliente");
    spar_id_curso = request.getParameter("txt_id_curso");
    spar_id_catedratico = request.getParameter("txt_id_catedratico");
    spar_id_facultad = request.getParameter("txt_id_facultad");
    spar_nombre = request.getParameter("txt_nombre");
  
  

    if (spar_id_curso != null && spar_id_catedratico != null && spar_id_facultad!= null && spar_nombre != null ) {
        par_id_curso = Integer.parseInt(spar_id_curso);
        par_id_catedratico = Integer.parseInt(spar_id_catedratico);
        par_id_facultad = Integer.parseInt(spar_id_facultad);
        //par_edad = Integer.parseInt(spar_edad);

        conexion_act.implementacion_actualizar(par_id_curso, par_id_catedratico, par_id_facultad, spar_nombre);

        //response.sendRedirect("index.jsp");
    }
%>


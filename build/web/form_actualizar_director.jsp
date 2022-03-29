<%-- 
    Document   : form_actualizar_director
    Created on : 29 oct. 2021, 17:19:44
    Author     : Home
--%>

<%@page import="Director.Conectar_Actualizar"%>
<%@page import="Director.Conectar_Insertar"%>
<%@page import="Director.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR</title>
    </head>
    <body>
        <%
            int p_id_director = Integer.parseInt(request.getParameter("id"));

            Conectar_Actualizar conexion_act = new Conectar_Actualizar(p_id_director);

        %>


        <h1>Ingrese los Datos</h1>


        <%                                while (conexion_act.rs.next()) {
        %>

        <form name="Form_actualizar" method="POST">

            <h2>CODIGO DIRECTOR <input type="text" name="txt_id_director" value="<%=conexion_act.rs.getInt("ID_DIRECTOR")%>" /></h2>
            <h2>NOMBRE <input type="text" name="txt_nombre" value="<%=conexion_act.rs.getString("NOMBRE")%>" /></h2>
            <h2>DIRECCION <input type="text" name="txt_direccion" value="<%=conexion_act.rs.getString("DIRECCION")%>" /></h2>


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
    String spar_id_director;

    int par_id_director;
    String spar_nombre, spar_direccion;

    //par_id_cliente=request.getParameter("txt_id_cliente");
    spar_id_director = request.getParameter("txt_id_director");
    spar_nombre = request.getParameter("txt_nombre");
    spar_direccion = request.getParameter("txt_direccion");
  

    if (spar_id_director != null && spar_nombre != null && spar_direccion != null) {
        par_id_director = Integer.parseInt(spar_id_director);
        //par_edad = Integer.parseInt(spar_edad);

        conexion_act.implementacion_actualizar(par_id_director, spar_nombre, spar_direccion);

        //response.sendRedirect("index.jsp");
    }
%>

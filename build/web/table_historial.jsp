<%-- 
    Document   : table_historial
    Created on : 31 oct. 2021, 18:07:04
    Author     : Home
--%>
<%@page import="Historial.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        Conectar_Mostrar conexion = new Conectar_Mostrar();
    %>
    <body>
        <div>
            <a href="form_agregar_estudiante.jsp">
                <button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>
            </a>
            
            <!--<button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>-->

            <table border="1">
                <thead>
                    <tr>
                        <th>ACTIVIDAD</th>
                        <th>TABLA</th>
                        <th>ID REGISTRO</th>
                        <th>FECHA DE MODIFICACION</th>
                        <th>USUARIO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                        <%                                while (conexion.rs.next()) {
                        %>
                        <td> <%=conexion.rs.getString("ACTIVIDAD")%>  </td>
                        <td> <%=conexion.rs.getString("TABLA")%>  </td>
                        <td><%=conexion.rs.getInt("CODIGO_REGISTRO")%>  </td>
                        <td> <%=conexion.rs.getString("FECHA_MODIFICACION")%>  </td>
                        <td> <%=conexion.rs.getString("USUARIO")%>  </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>

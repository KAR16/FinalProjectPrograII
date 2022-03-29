<%-- 
    Document   : table_sedes_2
    Created on : 31 oct. 2021, 14:20:22
    Author     : Home
--%>
<%@page import="java.sql.*"%>
<%@page import="Sede_2.Conectar_Mostrar"%>
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
       <h1>Mostrar Clientes</h1>
        <div>
            <a href="form_agregar_sede.jsp">
                <button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>
            </a>

            <!--<button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>-->

            <table border="1">
                <thead>
                    <tr>
                        <th>ID SEDE</th>
                        <th>ID DIRECTOR</th>
                        <th>ID_ESTUDIANTE</th>
                        <th>DIRECCION</th>
                        <th>OPCIONES</th>
                    </tr>
                </thead>
                <tbody>
                     <%                                while (conexion.rs.next()) {
                        %>
                    <tr>
                        <td><%=conexion.rs.getInt("ID_SEDE")%>  </td>
                        <td> <%=conexion.rs.getInt("ID_DIRECTOR")%>  </td>
                        <td><%=conexion.rs.getInt("ID_ESTUDIANTE")%>  </td>
                        <td><%=conexion.rs.getString("DIRECCION")%>  </td>
                        <td>
                            <a href="form_actualizar_sede.jsp?id=<%=conexion.rs.getInt("ID_SEDE")%>">ACTUALIZAR</a>
                            <a href="form_eliminar_sede_2.jsp?id=<%=conexion.rs.getInt("ID_SEDE")%>">ELIMINAR</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>

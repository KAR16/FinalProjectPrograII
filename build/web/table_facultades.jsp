<%--
    Document   : table_estudiantes
    Created on : 29 oct. 2021, 16:57:39
    Author     : Home
--%>

<<%@page import="java.sql.*"%>
<%@page import="Facultad.Conectar_Mostrar"%>
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
        <h1>Proyecto Final - Programación II</h1

        <h1>Mostrar Clientes</h1>
        <div>
            <a href="form_agregar_facultad.jsp">
                <button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>
            </a>

            <!--<button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>-->

            <table border="1">
                <thead>
                    <tr>
                        <th>ID FACULTAD</th>
                        <th>ID SEDE</th>
                        <th>NOMBRE</th>
                        <th>OPCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                        <%                                while (conexion.rs.next()) {
                        %>
                        <td><%=conexion.rs.getInt("ID_FACULTAD")%>  </td>
                        <td> <%=conexion.rs.getInt("ID_SEDE")%>  </td>
                        <td><%=conexion.rs.getString("NOMBRE")%>  </td>
                        <td>
                            <a href="form_actualizar_facultad.jsp?id=<%=conexion.rs.getInt("ID_FACULTAD")%>">ACTUALIZAR</a>
                            <a href="form_eliminar_facultad.jsp?id=<%=conexion.rs.getInt("ID_FACULTAD")%>">ELIMINAR</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>

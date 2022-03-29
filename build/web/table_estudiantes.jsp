<%-- 
    Document   : table_estudiantes
    Created on : 29 oct. 2021, 16:57:39
    Author     : Home
--%>

<%@page import="java.sql.*"%>
<%@page import="Estudiante.Conectar_Mostrar"%>
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
            <a href="form_agregar_estudiante.jsp">
                <button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>
            </a>
            
            <!--<button id="btnInsertar" type="submit" class="btn btn-primary">INSERTAR</button>-->

            <table border="1">
                <thead>
                    <tr>
                        <th>ID ESTUDIANTE</th>
                        <th>NOMBRE</th>
                        <th>DIRECCION</th>
                        <th>EDAD</th>
                        <th>OPCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                        <%                                while (conexion.rs.next()) {
                        %>
                        <td><%=conexion.rs.getInt("ID_ESTUDIANTE")%>  </td>
                        <td> <%=conexion.rs.getString("NOMBRE")%>  </td>
                        <td><%=conexion.rs.getString("DIRECCION")%>  </td>
                        <td><%=conexion.rs.getString("EDAD")%>  </td>
                        <td>
                            <a href="form_actualizar_estudiante.jsp?id=<%=conexion.rs.getInt("ID_ESTUDIANTE")%>">ACTUALIZAR</a>
                            <a href="form_eliminar_estudiante.jsp?id=<%=conexion.rs.getInt("ID_ESTUDIANTE")%>">ELIMINAR</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estudiante;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Maco
 */
public final class Conectar_Insertar {

    int id_estudiante;
    String nombre, direccion;
    int edad, estado;

    public Conectar_Insertar(int id_estudiante, String nombre, String direccion, int edad) throws ClassNotFoundException {
        this.id_estudiante = id_estudiante;
        this.nombre = nombre;
        this.direccion = direccion;
        this.edad = edad;
        this.estado = 1;
        
        System.out.println(id_estudiante + nombre + direccion + edad + estado);

        implementacion();
    }

    public void implementacion() throws ClassNotFoundException {
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        try {
            String connectionUrl = "jdbc:sqlserver://DESKTOP-IAOGJ1V:1433;databaseName=dbuniversidad";
            String user = "usersql";
            String pass = "root123";

            Class.forName(driver);

            Connection conect = DriverManager.getConnection(connectionUrl, user, pass);
            PreparedStatement ps;
            //ResultSet rs;
            ps = conect.prepareStatement("INSERT INTO dbo.ESTUDIANTES (ID_ESTUDIANTE,NOMBRE,DIRECCION,EDAD,ESTADO) values (" + id_estudiante + ",'" + nombre + "','" + direccion + "'," + edad + "," + estado + ")");
            ps.executeUpdate();
            
            //Funcion insertar historial
            insert_historial(conect, ps);
           

            //System.out.println("Conectado.");
        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }

    //Insertar historial
    public void insert_historial(Connection conect, PreparedStatement ps) throws SQLException{
         //Historial
            String fecha_modificacion = "10/10/21";
            String usuario = "usersql";
            ps = conect.prepareStatement("INSERT INTO dbo.HISTORIAL2 (ACTIVIDAD,TABLA,CODIGO_REGISTRO,FECHA_MODIFICACION,USUARIO) values ('INSERT', 'ESTUDIANTES'," + id_estudiante + ",'" + fecha_modificacion + "','" + usuario +"')");
            ps.executeUpdate();
    }
}

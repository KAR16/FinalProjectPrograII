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
 * @author alumno
 */
public class Conectar_Eliminar {

    public ResultSet rs;
    int cod;
    PreparedStatement ps;
    Connection conect;

    public Conectar_Eliminar(int cod) throws ClassNotFoundException, SQLException {
        this.cod = cod;
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        try {
            String connectionUrl = "jdbc:sqlserver://DESKTOP-IAOGJ1V:1433;databaseName=dbuniversidad";
            String user = "usersql";
            String pass = "root123";

            Class.forName(driver);
            conect = DriverManager.getConnection(connectionUrl, user, pass);

            //ResultSet rs;
            ps = conect.prepareStatement("SELECT * FROM dbo.ESTUDIANTES WHERE ID_ESTUDIANTE=" + cod);
            rs = ps.executeQuery();
            //System.out.println("Conectado.");

        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }
    
    public void implementacion_eliminar(int id_estudiante, String nombre, String direccion, int edad) throws SQLException {

        ps = conect.prepareStatement("UPDATE dbo.ESTUDIANTES SET NOMBRE='" + nombre + "',DIRECCION='" + direccion + "',EDAD=" + edad + ",ESTADO=" + 0 + " WHERE ID_ESTUDIANTE=" + id_estudiante);
        ps.executeUpdate();

        //System.out.println("Conectado.");
    }

}

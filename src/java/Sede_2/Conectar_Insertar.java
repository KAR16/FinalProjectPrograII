/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sede_2;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Home
 */
public class Conectar_Insertar {
    
     int id_estudiante, id_sede, id_director;
    String nombre, direccion;
    int edad, estado;

    public Conectar_Insertar(int id_sede, int id_director, int id_estudiante, String direccion) throws ClassNotFoundException {
        this.id_sede = id_sede;
        this.id_director = id_director;
        this.id_estudiante = id_estudiante;
        this.direccion = direccion;
        this.estado = 1;

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
            ps = conect.prepareStatement("INSERT INTO dbo.SEDES (ID_SEDE, ID_DIRECTOR, ID_ESTUDIANTE,DIRECCION,ESTADO) values ("+ id_sede + "," + id_director +","+ id_estudiante + ",'" + direccion + "'," + estado + ")");
            ps.executeUpdate();

            //System.out.println("Conectado.");
        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }

    
}

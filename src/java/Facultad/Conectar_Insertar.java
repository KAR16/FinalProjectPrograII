/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facultad;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Maco
 */
public final class Conectar_Insertar {

    int id_facultad;
    String nombre;
    int id_sede, estado;

    public Conectar_Insertar(int id_facultad, int id_sede, String nombre) throws ClassNotFoundException {
        this.id_facultad = id_facultad;
        this.id_sede = id_sede;
        this.nombre = nombre;
        this.estado = 1;

        System.out.println(id_facultad + id_sede + nombre + estado);

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
            ps = conect.prepareStatement("INSERT INTO dbo.FACULTADES (ID_FACULTAD, ID_SEDE,NOMBRE, ESTADO) values (" + id_facultad + "," + id_sede + ",'" + nombre + "'," + estado + ")");
            ps.executeUpdate();

            //System.out.println("Conectado.");
        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }

}
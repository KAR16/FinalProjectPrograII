/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Laboratorio;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Maco
 */
public final class Conectar_Insertar {

    int id_laboratorio, id_curso;
    String nombre;
    int estado;

    public Conectar_Insertar(int id_laboratorio, int id_curso, String nombre) throws ClassNotFoundException {
        this.id_laboratorio = id_laboratorio;
        this.id_curso = id_curso;
        this.nombre = nombre;
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
            ps = conect.prepareStatement("INSERT INTO dbo.LABORATORIOS (ID_LABORATORIO,ID_CURSO,NOMBRE,ESTADO) values (" + id_laboratorio + "," + id_curso + ",'" + nombre + "'," + estado + ")");
            ps.executeUpdate();

            //System.out.println("Conectado.");
        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }

}           
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Catedratico;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author alumno
 */
public class Conectar_Insertar {
    int id_catedratico;
    String nombre, direccion;
    int estado;

    public Conectar_Insertar(int id_catedratico, String nombre, String direccion) throws ClassNotFoundException {
        this.id_catedratico = id_catedratico;
        this.nombre = nombre;
        this.direccion = direccion;
        this.estado = 1;
        
        System.out.println(id_catedratico + nombre + direccion+ estado);

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
            ps = conect.prepareStatement("INSERT INTO dbo.CATEDRATICOS (ID_CATEDRATICO,NOMBRE,DIRECCION,ESTADO) values (" + id_catedratico + ",'" + nombre + "','" + direccion + "'," + estado + ")");
            ps.executeUpdate();

            //System.out.println("Conectado.");
        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }
    
    
    
}

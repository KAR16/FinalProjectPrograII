/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Director;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Home
 */
public class Conectar_Insertar {
    
    int id_director;
    String nombre, direccion;
    int estado;

    public Conectar_Insertar(int id_director, String nombre, String direccion) throws ClassNotFoundException {
        this.id_director = id_director;
        this.nombre = nombre;
        this.direccion = direccion;
        this.estado = 1;
        
        System.out.println(id_director + nombre + direccion+ estado);

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
            ps = conect.prepareStatement("INSERT INTO dbo.DIRECTORES (ID_DIRECTOR,NOMBRE,DIRECCION,ESTADO) values (" + id_director + ",'" + nombre + "','" + direccion + "'," + estado + ")");
            ps.executeUpdate();

            //System.out.println("Conectado.");
        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }
    
    
}

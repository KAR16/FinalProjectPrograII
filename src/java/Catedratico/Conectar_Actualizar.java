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
public class Conectar_Actualizar {
    
    public ResultSet rs;
    int cod;
    PreparedStatement ps;
    Connection conect;

    public Conectar_Actualizar(int cod) throws ClassNotFoundException, SQLException {
        this.cod = cod;
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        try {
            String connectionUrl = "jdbc:sqlserver://DESKTOP-IAOGJ1V:1433;databaseName=dbuniversidad";
            String user = "usersql";
            String pass = "root123";

            Class.forName(driver);
            conect = DriverManager.getConnection(connectionUrl, user, pass);

            //ResultSet rs;
            ps = conect.prepareStatement("SELECT * FROM dbo.CATEDRATICOS WHERE ID_CATEDRATICO=" + cod);
            rs = ps.executeQuery();
            //System.out.println("Conectado.");

        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }

    public void implementacion_actualizar(int id_catedratico, String nombre, String direccion) throws SQLException {

        ps = conect.prepareStatement("UPDATE dbo.CATEDRATICOS SET NOMBRE='" + nombre + "',DIRECCION='" + direccion + "' WHERE ID_CATEDRATICO=" + id_catedratico);
        ps.executeUpdate();

        //System.out.println("Conectado.");
    }
    
}

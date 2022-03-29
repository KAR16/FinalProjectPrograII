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
                ps = conect.prepareStatement("SELECT * FROM dbo.DIRECTORES WHERE ID_DIRECTOR=" + cod);
            rs = ps.executeQuery();
            //System.out.println("Conectado.");

        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }

    public void implementacion_actualizar(int id_director, String nombre, String direccion) throws SQLException {

        ps = conect.prepareStatement("UPDATE dbo.DIRECTORES SET NOMBRE='" + nombre + "',DIRECCION='" + direccion + "' WHERE ID_DIRECTOR=" + id_director);
        ps.executeUpdate();

        //System.out.println("Conectado.");
    }
    
}

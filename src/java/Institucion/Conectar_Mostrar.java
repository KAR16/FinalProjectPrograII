/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Institucion;


import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Home
 */
public class Conectar_Mostrar {
    
     
    public ResultSet rs;
    public Conectar_Mostrar() throws ClassNotFoundException, SQLException {
        String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
        try{
             String connectionUrl = "jdbc:sqlserver://DESKTOP-IAOGJ1V:1433;databaseName=dbuniversidad";
            String user="usersql";
            String pass="root123";      
    
     Class.forName(driver);
  Connection conect = DriverManager.getConnection(connectionUrl,user,pass);
  PreparedStatement ps;
  //ResultSet rs;
 ps=conect.prepareStatement("SELECT ID_INSTITUCION, NOMBRE FROM dbo.INSTITUCIONES WHERE INSTITUCIONES.ESTADO=1");
  rs=ps.executeQuery();
  //System.out.println("Conectado.");
  
        }catch(SQLException ex) 
                {
                     System.out.println("Error.");
    
                }
    }
    
    
}

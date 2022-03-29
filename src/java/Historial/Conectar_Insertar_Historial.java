/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Historial;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Home
 */
public class Conectar_Insertar_Historial {
    
    int codigo_registro ;
    String actividad, tabla, fecha_modificacion,usuario;

    public Conectar_Insertar_Historial(String actividad, String tabla, int codigo_registro, String fecha_modificacion, String usuario  ) throws ClassNotFoundException {
        this.actividad = actividad;
        this.tabla = tabla;
        this.codigo_registro = codigo_registro;
        this.fecha_modificacion = fecha_modificacion;
        this.usuario = usuario;
        //this.estado = 1;
        
        //System.out.println(actividad + tabla + codigo_registro + fecha_modificacion + usuario);

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
            ps = conect.prepareStatement("INSERT INTO dbo.HISTORIAL2 (ACTIVIDAD,TABLA,CODIGO_REGISTRO,FECHA_MODIFICACION,USUARIO) values ('" + actividad + "','" + tabla + "'," + codigo_registro + ",'" + fecha_modificacion + "','" + usuario + "')");
            ps.executeUpdate();

            //System.out.println("Conectado.");
        } catch (SQLException ex) {
            System.out.println("Error.");

        }
    }
}

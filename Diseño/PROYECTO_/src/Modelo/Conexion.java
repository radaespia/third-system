package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static final String URL = "jdbc:mysql://localhost:3306/PROYECTO";
    private static final String USUARIO = "root";
    private static final String CONTRASENA = "";

    public Connection obtenerConexion() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");//carga el driver que permite a java interactuar con bd
            conexion = DriverManager.getConnection(URL, USUARIO, CONTRASENA);// Se establece la conexion
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al conectar a la base de datos: " + e.getMessage());
        }
        return conexion;
    }
}

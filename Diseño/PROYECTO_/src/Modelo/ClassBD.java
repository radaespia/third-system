package Modelo;

import com.sun.jdi.connect.spi.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class ClassBD {

    private static final String URL = "jdbc:postgresql://localhost:5432/tu_base_de_datos";
    private static final String USER = "tu_usuario";
    private static final String PASSWORD = "tu_contraseña";

    private Connection connection;
    public ResultSet rs;

   

    public boolean agregarPersona(String Nombre, int Edad, String Condicion, String Contacto, String Direccion, String Ced_Usuario, String Contrasena) {
    try {
        Connection con = (Connection) Conexion.obtenerConexion(); // Obtenemos la conexión de la base de datos

        // Consulta SQL para insertar un registro en la tabla Per_Inf
        String sql = "INSERT INTO Per_Inf (Nombre, Edad, Condicion, Contacto, Direccion, Ced_Usuario, Contrasena) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = con.prepareStatement(sql);

        // Asignamos los valores a la consulta SQL
        statement.setString(1, Nombre);       // Nombre de la persona
        statement.setInt(2, Edad);           // Edad
        statement.setString(3, Condicion);   // Condición médica o especial
        statement.setString(4, Contacto);    // Contacto
        statement.setString(5, Direccion);   // Dirección
        statement.setString(6, Ced_Usuario); // Cédula o identificador único
        statement.setString(7, Contrasena);  // Contraseña (recomendado encriptarla)

        // Ejecutamos la consulta y verificamos si se insertaron filas
        int filasAfectadas = statement.executeUpdate();

        if (filasAfectadas > 0) { // Si al menos una fila fue afectada
            return true;
        } else { // Si no se insertó nada
            return false;
        }
    } catch (Exception e) {
        e.printStackTrace();
        JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        return false;
    }
}


    // Método para insertar en la tabla Login
    public void insertLogin(String usuario, String contrasena) {
        String query = "INSERT INTO Login (Usuario, Contrasena) VALUES (?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, usuario);
            stmt.setString(2, contrasena);
            stmt.executeUpdate();
            System.out.println("Registro insertado en Login.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

   
}



package DAL;
import java.sql.*;
import javax.swing.JOptionPane;

public class ConectaBd {
    
    public static Connection conectabd() throws ClassNotFoundException{
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/qualitex","postgres", "postgres");
            //JOptionPane.showMessageDialog(null, "Conectado com sucesso!");
            return con;
        }
        catch(SQLException error){
           JOptionPane.showMessageDialog(null, error);
           
           return null;
        }
    }
}

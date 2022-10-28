package Database;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Elaf
 */
public class DatabaseConnection {

    String url = "jdbc:mysql://localhost:3306/lifequest?useSSL=false";
    String username = "C3A_4";
    String password = "123456";
    Connection connection = null;
    PreparedStatement preparedState = null;
    ResultSet resultSet = null;
    String query = "";

    public DatabaseConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet information() {
        query = "SELECT * FROM account;";

        try {
            preparedState = connection.prepareStatement(query);
            resultSet = preparedState.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultSet;

    }

    public int addInfo(String username, String password, String email, String id, String phoneNumber, String birthdate, String bloodType) {
        query = "insert into account(username, password, email, id, phoneNumber, birthdate, bloodType)values('" + username + "','" + password + "','" + email
                + "','" + id + "','" + phoneNumber + "','" + birthdate + "','" + bloodType + "');";

        int i = -1;
        try {
            Statement stmt = connection.createStatement();
            i = stmt.executeUpdate(query);

        } catch (Exception e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }

    public ResultSet getUserInformation(String username, String password) {

        // query = "SELECT * FROM form WHERE username='Ealoufi0015' AND password='12345678';";
        query = "SELECT * FROM form WHERE username='" + username + "' AND password='" + password + "';";
        try {
            preparedState = connection.prepareStatement(query);
            resultSet = preparedState.executeQuery();

        } catch (SQLException ex) {
            System.out.println("***User does not not exist***");

        }
        return resultSet;

    }
}

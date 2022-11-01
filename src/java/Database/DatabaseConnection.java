package Database;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author manar
 */
public class DatabaseConnection {
    String serverURL = "jdbc:mysql://localhost:3306/lifequest?useSSL=false";
    String username = "C3A_4";
    String password = "123456";
    Connection conn = null;
    PreparedStatement preparedST = null;
    ResultSet RS = null;
    String sqlQuery = "";

    public DatabaseConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(serverURL, username, password);
        } catch (SQLException ex) {
        } catch (ClassNotFoundException ex) {
            System.out.print("Connection ERROR");
        }
    }
    
        public ResultSet validateUsersinDB(String username,String password) {
        sqlQuery = "SELECT * FROM account WHERE username= '"+username+"' AND password= '"+password+"'";
        try {
            preparedST = conn.prepareStatement(sqlQuery);
            RS = preparedST.executeQuery();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return RS;
    }

    public ResultSet getUsers() {
        sqlQuery = "SELECT * FROM account;";
        try {
            preparedST = conn.prepareStatement(sqlQuery);
            RS = preparedST.executeQuery();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return RS;
    }
 
}


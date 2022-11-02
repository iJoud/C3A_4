package Database;

import java.io.*;
import java.sql.*;
import java.util.Arrays;
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

    public int addInfo(String username, String password, String email, String id, String phoneNumber, String birthdate, String bloodType) {
        sqlQuery = "insert into account(username, password, email, id, phoneNumber, birthdate, bloodType)values('" + username + "','" + password + "','" + email
                + "','" + id + "','" + phoneNumber + "','" + birthdate + "','" + bloodType + "');";

        int i = -1;
        try {
            Statement stmt = conn.createStatement();
            i = stmt.executeUpdate(sqlQuery);

        } catch (Exception e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }

    public int addPost(String uid, String bloodType, String donationType,
            String city, String hospital, String postBody, String date) {
        sqlQuery = "insert into post(uid, bloodType, donationType, city, hospital, postBody, date)values('"
                + uid + "','" + bloodType + "','" + donationType + "','" + city
                + "','" + hospital + "','" + postBody + "','" + date + "');";

        int i = -1;
        try {
            Statement statement = conn.createStatement();
            i = statement.executeUpdate(sqlQuery);
        } catch (Exception e) {
            e.getMessage();
        }
        return i;
    }

    public ResultSet getPost() {
        sqlQuery = "SELECT post.*, account.* FROM post INNER JOIN account ON (account.id=post.uid);";

//                "insert into post(uid, bloodType, donationType, city, hospital, postBody, date)values('"
//                + uid + "','" + bloodType + "','" + donationType + "','" + city
//                + "','" + hospital + "','" + postBody + "','" + date + "');";
//        
//        SELECT a.id, a.name, a.num, b.date, b.roll
//FROM a
//INNER JOIN b ON a.id=b.id;
//        sqlQuery = "SELECT * FROM account WHERE username= '" + username + "' AND password= '" + password + "'";
        try {
            preparedST = conn.prepareStatement(sqlQuery);
            RS = preparedST.executeQuery();
        } catch (SQLException ex) {
            ex.getStackTrace();
        }
        return RS;
    }

    public ResultSet validateUsersinDB(String username, String password) {
        sqlQuery = "SELECT * FROM account WHERE username= '" + username + "' AND password= '" + password + "'";
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

//    public static void main(String[] args) {
//        try {
//            DatabaseConnection c = new DatabaseConnection();
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//    }

}

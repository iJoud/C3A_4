package Database;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DatabaseConnection {

    private String serverURL = "jdbc:mysql://localhost:3306/lifequest?useSSL=false";
    private String username = "C3A_4";
    private String password = "123456";
    private Connection conn = null;
    private PreparedStatement preparedST = null;
    private ResultSet RS = null;
    private String sqlQuery = "";

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
        sqlQuery = "INSERT INTO account(username, password, email, id, phoneNumber, birthdate, bloodType)values('" + username + "','" + password + "','" + email
                + "','" + id + "','" + phoneNumber + "','" + birthdate + "','" + bloodType + "');";

        int i = -1;
        try {
            Statement stmt = conn.createStatement();
            i = stmt.executeUpdate(sqlQuery);
            
        } catch (Exception e) {
            //System.out.print(e);
           e.getMessage();
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
 public int updateInfo(String username, String password, String email, String id, String phoneNumber, String birthdate, String bloodType) {
        sqlQuery = "update account set username= '" + username + "' , password= '" + password + "' , email= '" + email + "' , id= '" + id + "' , phoneNumber= '" + phoneNumber + "' , birthdate= '" + birthdate + "' , bloodType= '" + bloodType + "' where username= '" + username + "';";
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
    public ResultSet getPost() {
        sqlQuery = "SELECT post.*, account.* FROM post INNER JOIN account ON (account.id=post.uid);";

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

    public void close() {
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

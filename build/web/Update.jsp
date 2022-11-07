<%-- 
    Document   : Update
    Created on : Nov 2, 2022, 7:02:38 PM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>


        <%

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String id = request.getParameter("id");
            String phoneNumber = request.getParameter("phoneNumber");
            String birthdate = request.getParameter("birthdate");
            String bloodType = request.getParameter("bloodType");

            Database.DatabaseConnection connection = new Database.DatabaseConnection();
            int isUpdated = connection.updateInfo(username, password, email, id, phoneNumber, birthdate, bloodType);
            if (isUpdated > 0) {


        %>
        <script>
            alert("Your information has been updated successfully!");
            window.location.href = 'Home.jsp';
        </script>

        <%            }
        %>
    </body>
</html>

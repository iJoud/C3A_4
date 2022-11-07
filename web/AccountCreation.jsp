<%-- 
    Document   : AccountCreation
    Created on : Oct 28, 2022, 3:03:46 AM
    Author     : Elaf
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Account</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="SignupStyle.css" rel="stylesheet"/>

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

            if (connection != null) {
                int isInserted = connection.addInfo(username, password, email, id, phoneNumber, birthdate, bloodType);

                if (isInserted !=-1) {
                    // to use it when adding posts
                    session.setAttribute("userID", id);
                    // to use it in other pages
                    session.setAttribute("CurrentUser", request.getParameter("username"));


        %>

        <script>
                alert("Hi" + <%=username%> + "Your account have been created successfully!");
                window.location.href = 'Home.jsp';
        </script>


        <%} else {
                out.print("A problem has occurred, please re-create your account");
            }
        } else {
        %> 
        <script>
            alert("A problem has occurred, please re-create your account");
            window.location.href = 'SignUp.jsp';
        </script>                    

        <%        }
        %> 

    </body>
</html>

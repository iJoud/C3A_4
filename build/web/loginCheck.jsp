<%-- 
    Document   : loginCheck
    Created on : Oct 30, 2022, 2:43:49 AM
    Author     : manar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login information check</title>
    </head>
    <body>
        <%

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null ) {
                if (password != null ) {

                    Database.DatabaseConnection connection = new Database.DatabaseConnection();
                    ResultSet rs = connection.validateUsersinDB(username, password);

                    if (rs.next()) {
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);
                        
                        // to use it when adding posts
                        session.setAttribute("userID", rs.getString("id"));
                        // to use it in other pages
                        session.setAttribute("CurrentUser", request.getParameter("username"));
                        response.sendRedirect("Home.jsp");

                    } else {
                        %>
                        <script>
                           alert("You do not have an account") ;
                           window.location.href='login.jsp'; 
                        </script>
                      
                        <%
                    }
                } else {
                    %>
                     <script>
                           alert("Please enter correct password") ;
                           window.location.href='login.jsp'; 
                        </script>
                   
               <% }
            } else {
%>
                <script>
                           alert("Please enter correct data") ;
                           window.location.href='login.jsp'; 
                        </script>
     <%    
}
       %>

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
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String username = request.getParameter("UserName");
            String password = request.getParameter("Password");

            if (username != null && username.length() >= 4) {
                if (password != null && password.length() >= 4) {

                    Database.DatabaseConnection connection = new Database.DatabaseConnection();
                    ResultSet rs = connection.validateUsersinDB(username, password);

                    if (rs.next()) {
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);
                        
                        // to use it when adding posts
                        session.setAttribute("userID", rs.getString("id"));
                        // to use it in other pages
                        session.setAttribute("CurrentUser", request.getParameter("UserName"));
                        
                        response.sendRedirect("Home.jsp");

                    } else {
                        out.print("You are unauthorized user");
                    }
                } else {
                    out.print("Please enter correct password<br>");
                    out.print("<a href='login.jsp'>Login page</a> |");
                }
            } else {
                out.print("Please enter correct data<br>");
                out.print("<a href='login.jsp'>Login page</a> |");
            }
        %>

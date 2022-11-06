<%-- 
    Document   : LogOut
    Created on : Oct 30, 2022, 10:39:04 PM
    Author     : Elaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session.invalidate();
           //out.print("you are not authorzied user");
           response.sendRedirect("login.jsp");
        %>
    </body>
</html>
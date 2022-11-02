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
        <div class="topnav">
            <img id="logo" src="Logo.jpg" alt="logo">
            <a href="Index.html">Home</a>
            <a href="process.html">Donation Requests</a>
            <a href="Create_Post.jsp">Search for Donors</a>
            <a href="book.html">About Us</a>

            <%

                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String email = request.getParameter("email");
                String id = request.getParameter("id");
                String phoneNumber = request.getParameter("phoneNumber");
                String birthdate = request.getParameter("birthdate");
                String bloodType = request.getParameter("bloodType");

                // to use it when adding posts
                session.setAttribute("userID", id);
                // to use it in other pages
                session.setAttribute("CurrentUser", request.getParameter("username"));
                
                Database.DatabaseConnection connection = new Database.DatabaseConnection();

                if (connection != null) {
                    int isInserted = connection.addInfo(username, password, email, id, phoneNumber, birthdate, bloodType);

                    if (isInserted > 0) {
            %>

            <img src="account.png" class="accountPic" alt="pic"/>  
            <a href=Account.html" class="wel">Welcome <%=username%> </a>
         </div>
           
            <div Style="height: 70vh; display: flex; flex-direction: column; align-items: center; justify-content: center;">      
                <h2> Hi <%=username%> </h2> 
                <p> Your account have been created successfully! </p> 
            </div> 

            <%}

                } else {
                    out.print("<h1> Connection is null <h1>");
                }
            %> 

        
            <!--put the code here-->
    </body>
</html>

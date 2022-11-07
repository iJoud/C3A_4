<%-- 
    Document   : Home
    Created on : Nov 2, 2022, 7:43:48 AM
    Author     : manar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <link href="CSS/Home.css" rel="stylesheet"/>
        <link href="CSS\pagestyle.css" rel="stylesheet"/>
        <link href="CSS\pagestyle.css" rel="stylesheet"/>
    </head>
    <body>
        <header>
            <nav class="topnav">
                <img id="logo" src="Images/Logo.jpg" alt="logo">
                <a href="Home.jsp">Home</a>
                <a href="View_Post.jsp">Donation Requests</a>
                <a href="Create_Post.jsp">Search for Donors</a>
                <a href="AboutUs.jsp">About Us</a>
                <a href="Instraction.jsp">Donation Instraction</a>
                <% if (session.getAttribute("CurrentUser") == null) { %>
                <button class="btn" type="button" onclick="window.location.href = 'login.jsp'">Login</button>
                <button class="btn" type="button" onclick="window.location.href = 'SignUp.jsp'">Sign up</button>
                <% } else { %>
                <button type="button"  onclick="window.location.href = 'LogOut.jsp'">Log out</button>
                <button type="button"  onclick="window.location.href = 'Account.jsp'">Update</button>
                <% }%>
            </nav>
        </header>
        <img class="image" src="Images/Homepage.png" alt="logo">
        <h1>
            <span>Save</span>
            <span>Souls</span>
            <span>By</span>
            <span>Your</span>
            <span>Donation!</span>
            <span><img  src="Images/home.png" alt="logo"></span>

        </h1>
        <p >By your contribution to help others to find a donor, donate for them, or just share the website; you'll save someone's life.</p>

        <img  class="image2" src="Images/line.png" alt="logo"></span>

    <div class="Section">
        <h2>Find a Donor <img src="Images/hand.png" alt="logo"></span></h2>
        <button type="button" onclick="window.location.href = 'SignUp.jsp'">Register Now</button>
    </div>
    <!-- --------------- Footer section --------------- -->
    <footer class="footer-distributed">

        <div class="footer-left">
            <div class="footer-links">
                <a href="Home.jsp">Home</a>
                <a href="View_Post.jsp">Donation Requests</a>
                <a href="Create_Post.jsp">Search for Donors</a>
                <a href="AboutUs.jsp">About Us</a>
                <a href="Instraction.jsp">Donation Instraction</a>  
            </div>

        </div>


    </footer>
</body>

</html>

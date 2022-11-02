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
        <link href="Home.css" rel="stylesheet"/>
         <link href="pagestyle.css" rel="stylesheet"/>
    </head>
    <body>
        <header>
            <nav class="topnav">
                <img id="logo" src="Logo.jpg" alt="logo">
                <a href="Index.html">Home</a>
                <a href="process.html">Donation Requests</a>
                <a href="RequirmentQuiz.html">Search for Donors</a>
                <a href="book.html">About Us</a>
                <button type="button"  onclick="window.location.href='login.jsp'">Login</button>
            </nav>
        </header>
       
        <img class="image" src="Homepage.png" alt="logo">
        <h1>
            <span>Save</span>
            <span>Souls</span>
            <span>By</span>
            <span>Your</span>
            <span>Donation!</span>
            <span><img  src="home.png" alt="logo"></span>

        </h1>
        <p >By your contribution to help others to find a donor, donate for them, or just share the website; you'll save someone's life.</p>

        <img  class="image2" src="line.png" alt="logo"></span>
       
    <div class="Section">
        <h2>Find a Donor <img src="hand.png" alt="logo"></span></h2>
        <button type="button" onclick="window.location.href='SignUp.jsp'">Register Now</button>
    </div>
    <!-- --------------- Footer section --------------- -->
   <footer class="footer-distributed">

            <div class="footer-left">
                <div class="footer-links">
                    <a href="Index.html">Home</a>
                    <a href="process.html">Donation Requests</a>
                    <a href="RequirmentQuiz.html">Search for Donors</a>
                    <a href="book.html">About Us</a>	   
                </div>


            </div>
        </footer>
</body>

</html>

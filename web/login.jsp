<%-- 
    Document   : login
    Created on : Oct 30, 2022, 2:18:18 AM
    Author     : manar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
        <link href="login.css" rel="stylesheet"/>
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
               
            </nav>
        </header>
        <!-- ---------------  Body section  ---------------  -->
        <div class="section1">
            <img class="loginimg" src="login.png" alt="user" /> 
       <section class="login" id='login'>
                <div class="head">
                    <h1 >Welcome, login to your account</h1>
                </div>

                <div class='form'>
                    <form name="login" action="loginCheck.jsp" method="POST">
                       
                        <input type="text" placeholder='Username' class='text' name="UserName" required /><br>
                        <input type="password" placeholder='••••••••••••••' class='password'  name="Password" required /><br><br>
                        <input type="radio" id="remmember" name="remmember" value="1"/><label style="font-size: 20px;"for="remmember">Remember me</label>
                        <a href="#" class='forgot'>Forgot password?</a>
                        <br><br><br><br>

                        <input class="btn-login"  type="submit" value="Login" name="Submit" />
                        <p id="account"> Don't have an account? <a href="SignUp.jsp">Sign up </a> </p> 

                    </form>
                </div>
            </section>
        </div>

        <!-- --------------- Footer section --------------- -->
    

        <footer class="footer-distributed">
        <div class="footer-left">
                <p class="footer-links">
                    <a href="Index.html">Home</a>
                    <a href="process.html">Donation Requests</a>
                    <a href="RequirmentQuiz.html">Search for Donors</a>
                    <a href="book.html">About Us</a>	   
                </p>


            </div>
        </footer>
    </body>
</html>

<%-- 
    Document   : AboutUs
    Created on : 05-Nov-2022, 00:15:20
    Author     : REEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <title>About Us info</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/AboutUs.css" rel="stylesheet"/>
        <link href="CSS\pagestyle.css" rel="stylesheet"/>
    </head>
    <body id="b">
        <div class="topnav">
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
        </div>
        <div class="container" id="con">
            <div class="row"><!-- First row -->
                <div class="col">
                    <p id="welcome">About<span id="dot"> US.</span> </p> 
                    <p id="p1"><span id="ob">Life</span><span id="ob2">Quest</span> is a website that aims to assist 
                        in finding potential blood donors for emergency patients quickly. Instead of posting the patients' information 
                        on all the social media applications, and many people ignore it, they can post their request here to let them 
                        know they need blood donation.</p>
                    <p id="welcome">Our<span id="dot"> Objectives.</span> </p> 
                    <ul id="list">
                        <li>safe our users information to be secure.</li>
                        <li>Increase people focus on blood donation requests.</li>
                        <li>Posting donation requests easily.</li>
                        <li>Give people information about donation.</li>
                    </ul>
                </div>
                <div class="col">
                    <img id="homepagephoto" src="Images/Homepage.png" alt="homepage" class="floatRight"/>
                </div>
            </div>
            <div class="row"><!-- Secoond row -->
                <div class="col">
                    <div class="Mission-box"> 
                        <h3><span id="ob">Our</span><span id="ob2"> Mission</span></h3><p>
                        <p><span id="ob">Life</span><span id="ob2">Quest</span> is a nonprofit website whose 
                            mission is to focus on requesting blood donation by posting request contains all 
                            important patients information. The website strives to provide easiest way to request 
                            the blood donation for the patients and their families. LifeQuest is…circulating hope.</p><br><p>   </p>
                    </div>  
                </div>
                <div class="col">
                    <div class="Porpus-box"> 
                        <h3><span id="ob">Our</span><span id="ob2"> Purpose</span></h3>
                        <p><span id="ob">Life</span><span id="ob2">Quest</span> here to provide information about the 
                            patients who needs the blood donation and important information about the donation processes 
                            and to provide a huge hope for patient's families.  We hope that our website as a resource not 
                            only for patient's information but for personal support at donation journey for donors.  Our 
                            community is small but growing and we hope to offer support and information to the patients and their families.
                        </p>
                    </div>  
                </div>
            </div>

        </div>  
        <br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br />

        <footer class="footer-distributed">

            <div class="footer-left">
                <p class="footer-links">
                    <a href="Home.jsp">Home</a>
                    <a href="View_Post.jsp">Donation Requests</a>
                    <a href="Create_Post.jsp">Search for Donors</a>
                    <a href="AboutUs.jsp">About Us</a>
                    <a href="Instraction.jsp">Donation Instraction</a> 
                </p>


            </div>


        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </body>
</html> 
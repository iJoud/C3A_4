<%-- 
    Document   : Instraction
    Created on : 05-Nov-2022, 00:15:20
    Author     : SHIREEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <title>Instructions</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS\Instruction.css" rel="stylesheet"/>
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
                    <img id="homepagephoto" src="Images/mid.png" alt="homepage" class="floatRight"/>
                </div>
                <div class="col">
                    <p id="welcome">Blood<span id="dot"> Donation:</span> </p> 
                    <p id="p1">An act of voluntary transfusion in which a healthy person gives blood, 
                        or one of its components, to an ill person who needs it. Injuries and diseases 
                        that require blood transfusions lead to the necessity of this process every year 
                        for millions of people.</p> 

                    <p id="welcome">Blood<span id="dot"> Types:</span> </p> 
                    <p id="p1"><ul id="list">
                        <li>Full blood.</li>
                        <li>Platelets.</li>
                        <li>Plasma.</li>
                        <li>Red blood cells.</li>
                    </ul></p>    
                </div>
            </div>
            <div class="row"><!-- Secoond row -->
                <div class="col">
                    <p id="welcome">Importance of<span id="dot"> Blood Donation:</span> </p> 
                    <p id="p1">In cases such as these, blood transfusion is a life-saving procedure:
                    <ul id="list">
                        <li>safe our users information to be secure.</li>
                        <li>Increase people focus on blood donation requests.</li>
                        <li>Posting donation requests easily.</li>
                        <li>Give people information about donation.</li>
                    </ul></p> 
                    <p id="welcome">Amount of<span id="dot"> Donated Blood:</span> </p> 
                    <p id="p1">A healthy adult may donate 450 – 500 ml. No health risks or concerns are associated 
                        with blood donation, and donors may donate blood every two months, but not more than five times a year.</p>
                </div>
                <div class="col">
                    <img id="homepagephoto2" src="Images/miid.png" alt="homepage" class="floatLift"/>

                </div>
            </div>
            <div class="row"><!-- Third row -->
                <div class="col">
                    <img id="homepagephoto" src="Images/midd.png" alt="homepage" class="floatRight"/>
                </div>
                <div class="col">
                    <p id="welcome">Conditions For<span id="dot"> Blood Donation:</span> </p> 
                    <p id="p1"><ul id="list">
                        <li>Donor must be healthy and does not have any communicable diseases.</li>
                        <li>Donor must be between 18 – 65 years of age.</li>
                        <li>Donor's weight may not be less than 50 kg.</li>
                        <li>Hemoglobin rate must be between 14 – 17 g. in men and 12 – 14 g. in women.</li>
                        <li>Pulse rate must be 50 – 100 per minute.</li>
                        <li>Temperature may not exceed 37C.</li>
                        <li>Blood pressure rate must be less than 120/80 mmhg.</li>
                    </ul></p> 
                    <p id="welcome">Benefits of<span id="dot"> Blood Donation:</span> </p> 
                    <p id="p1"><ul id="list">
                        <li>Increases the stem cell activity to produce new cells (red and white blood cells and platelets).</li>
                        <li>Increased blood circulation.</li>
                        <li>Blood donation reduces iron in the blood – which is considered one of the main causes or cardiac diseases and arteries' blockage.</li>
                        <li>Studies have proven that those who donate blood at least once a year are less prone to circulatory diseases and blood cancers.</li>
                    </ul></p> 
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p id="welcome">Cases Where Blood<span id="dot"> Donation is Prohibited:</span> </p> 
                    <p id="p1"><ul id="list">
                        <li>People less than 18 years.</li>
                        <li>People with communicable diseases such as AIDS, Hepatitis B and C, Syphilis, malaria.</li>
                        <li>People with genetic blood diseases.</li>
                        <li>People who suffer acute anemia.</li>
                        <li>People suffering from chronic diseases such as diabetes, hypertension and cancers.</li>
                    </ul></p> 
                    <p id="welcome">Tips After<span id="dot"> Donating Blood:</span> </p> 
                    <p id="p1"><ul id="list">
                        <li>After donating blood, take some rest and have a light snack, and you can leave the donation center after 10 – 15 minutes.</li>
                        <li>Avoid excessive physical efforts or lifting heavy objects for 5 hours after donation.</li>
                        <li>If you feel dizzy, it is advisable to lie down on the back and lift the legs.</li>
                        <li>Drink plenty of fluids.</li>
                    </ul></p> 
                </div>
                <div class="col">
                    <img id="homepagephoto2" src="Images/mmid.png" alt="homepage" class="floatLift"/>

                </div>


            </div> 
            <button class="btn2" type="button" onclick="document.location = 'Create_Post.jsp'">Continue</button>



        </div>






        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </body>
</html>

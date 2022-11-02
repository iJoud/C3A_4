<%-- 
    Document   : View_Post
    Created on : Nov 2, 2022, 12:41:00 AM
    Author     : joudalghamdi
--%>


<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="CSS/View_Post.css">
    </head>

    <body>
        <%
        int isPosted = -1;
        String filled = (String)session.getAttribute("postFilled");

        if (filled!=null){
        
                String city = (String) request.getParameter("cityName");
                String hospital = (String) request.getParameter("hospitalName");
                String postBody = (String) request.getParameter("postBody");
                String donationType = (String) request.getParameter("donationType");
                String BloodType = (String) request.getParameter("BloodType");

                String userid = (String)session.getAttribute("userID");
                String currentDate = (String)java.time.LocalDate.now().toString();
//Please I'll be appreciated if any one can help me to find a plasma A plus donor. 
                Database.DatabaseConnection connection = new Database.DatabaseConnection();
                
                
               
                if (connection != null) {
                    isPosted = connection.addPost(userid, BloodType, donationType,
                                     city.trim(), hospital.trim(), postBody.trim(), currentDate);
            }
            
            }
        
        %>

        <div class="topnav">
            <img src="Logo.jpg" alt="logo" height="80" width="100" class="logo">
            <a href="Index.html">Home</a>
            <a href="process.html">Donation Requests</a>
            <a href="RequirmentQuiz.html">Search for Donors</a>
            <a href="book.html">About Us</a>
            <button class="btn" type="button">Login</button>
            <button class="btn" type="button">Sign up</button>
        </div>

        <div class="Header">
            <h1>Blood Donation Requests</h1>
            <div class="simple-text"> Pepole Posts Their Urgent Blood Request, Donate To <strong><span style="color:var(--main_color) ;"> Help </span> </strong>Them. </div>

            <%
            
            if (isPosted>0){
                out.print("<p>Your Post Has Been Added Successfully!</p>");
            } else {
                out.print("<p>Error Occured, Your Post Has not Been Posted.</p>");
                }
                
            %>

        </div>

        <div class="ParentDiv">

            <div class="SearchDiv">
                <h2 style="color:#e94364c0">Filter Results</h2>
                <ul class="searchList">
                    <li>Blood Type &dtrif;
                        <ul class="dropdownBloodType">
                            <li><input type="radio" name="dropdownBloodType" value="ABp" /><span>AB+</span></li>
                            <li><input type="radio" name="dropdownBloodType" value="ABm" /><span>AB-</span></li>
                            <li><input type="radio" name="dropdownBloodType" value="Ap" /><span>A+</span></li>
                            <li><input type="radio" name="dropdownBloodType" value="Am" /><span>A-</span></li>
                            <li><input type="radio" name="dropdownBloodType" value="Bm" /><span>B-</span></li>
                            <li><input type="radio" name="dropdownBloodType" value="Bp" /><span>B+</span></li>
                            <li><input type="radio" name="dropdownBloodType" value="Op" /><span>O+</span></li>
                            <li><input type="radio" name="dropdownBloodType" value="Om" /><span>O-</span></li>
                        </ul>
                    </li>
                    <li>Blood Donation Type &dtrif;
                        <ul class="dropdownBloodDonationType">
                            <li><input type="radio" name="dropdownBloodDonationType" value="Whole_blood" /><span>Whole blood</span></li>
                            <li><input type="radio" name="dropdownBloodDonationType" value="Platelet" /><span>Platelet</span></li>
                            <li><input type="radio" name="dropdownBloodDonationType" value="Plasma" /><span>Plasma</span></li>
                        </ul>
                    </li>

                    <li>City &dtrif;
                        <ul class="dropdownCity">
                            <li><input type="radio" name="dropdownCity" value="Riyadh" /><span>Riyadh</span></li>
                            <li><input type="radio" name="dropdownCity" value="Riyadh" /><span>Riyadh</span></li>
                            <li><input type="radio" name="dropdownCity" value="Riyadh" /><span>Riyadh</span></li>
                            <li><input type="radio" name="dropdownCity" value="Riyadh" /><span>Riyadh</span></li>
                            <li><input type="radio" name="dropdownCity" value="Riyadh" /><span>Riyadh</span></li>
                        </ul>
                    </li>
                </ul>
                <br><br>
                <button class="filter" >Filter</button>
            </div>

            <div class="Posts" class="g-4" style="width: 60%">
                <div class="col-12">
                    <div class="post text-end bg-white" post-id="70">

                        <div class="person p-3 d-flex justify-content-end align-items-center">
                            <div class="per-img">
                                <img src="Images/mohammad.svg" alt="Mohamed Image">
                            </div>

                            <div class="per-inf">
                                <h3>Username</h3>
                                <p class="mb-0">In<b> King Abdullah Hospital</b> Looking For <b>B-</b> Blood Type</p>
                                <small class="text-secondary">2022-05-15</small>
                            </div>
                        </div>

                        <p class="p-3">ali is seek 5 Blood type B-</p>

                        <div class="details d-flex justify-content-end align-items-center">
                            <div>
                                <span class="BloodTypeSpan">B-</span>
                            </div>
                            <div class="details-inf me-3">
                                <img class = "donation-type-img" src="Images/donation-type.png" alt="donation-type">
                                <h3 style="padding-left:30px">We need blood donars</h3>
                                <img class = "location-img" src="Images/location.png" alt="location">
                                <p class="mb-0 " style="padding-left:30px">Jeddah, King Abdulaziz Hospital<class="fas fa-map-marker-alt ms-2 text-secondary"></i></p>
                            </div>
                        </div>

                        <div class="num-comments d-flex justify-content-end py-1 px-3">
                            <!-- <small class="text-secondary">Need<span
                                    class="countGo mx-2 text-danger">0</span>Donators</small>
                            <span id="emoj"></span> -->
                        </div>

                        <div class="contact py-2 px-3 ">
                            <ul
                                class="list-unstyled mb-0 d-flex flex-row-reverse flex-wrap position-relative justify-content-center">
                                <li>
                                    <button>Donate</button>
                                </li>
                            </ul>

                        </div>

                    </div>
                </div>

                <!-- ################################################################################################################ -->

                <div class="col-12">
                    <div class="post text-end bg-white" post-id="70">

                        <div class="person p-3 d-flex justify-content-end align-items-center">

                            <div class="per-img">
                                <img src="Images/mohammad.svg" alt="Mohamed Image">
                            </div>

                            <div class="per-inf">
                                <h3>Username</h3>
                                <p class="mb-0"><b>In King Abdullah Hospital</b> B- Looking For </p>
                                <small class="text-secondary">2022-05-15</small>
                            </div>

                        </div>

                        <p class="p-3">ali is seelkdemkcwmekcn enciowen clwmcwmc lneln vlvnlvrnlr nljnv lencl lwem ce wee ecw ce ce wcee ewcw k 5 Blood type B-</p>

                        <div class="details d-flex justify-content-end align-items-center">
                            <div>
                                <span class="BloodTypeSpan">B-</span>
                            </div>    
                            <div class="details-inf me-3">
                                <img class = "donation-type-img" src="Images/donation-type.png" alt="donation-type">
                                <h3 style="padding-left:30px">We need blood donars</h3>
                                <img class = "location-img" src="Images/location.png" alt="location">
                                <p class="mb-0 " style="padding-left:30px">Jeddah, King Abdulaziz Hospital<class="fas fa-map-marker-alt ms-2 text-secondary"></i></p>
                            </div>
                        </div>

                        <div class="num-comments d-flex justify-content-end py-1 px-3">
                            <!-- <small class="text-secondary">Need<span
                                    class="countGo mx-2 text-danger">0</span>Donators</small>
                            <span id="emoj"></span> -->
                        </div>

                        <div class="contact py-2 px-3 ">
                            <ul
                                class="list-unstyled mb-0 d-flex flex-row-reverse flex-wrap position-relative justify-content-center">
                                <li>
                                    <button >Donate</button>
                                </li>
                            </ul>

                        </div>

                    </div>
                </div>

            </div>
        </div>

        <%
            String postFilled = null;
            session.setAttribute("postFilled", postFilled);

        %>

    </body>

</html>
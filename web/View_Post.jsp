<%-- 
    Document   : View_Post
    Created on : Nov 2, 2022, 12:41:00 AM
    Author     : joudalghamdi
--%>


<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Arrays"%>

<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="CSS/View_Post.css">
        <link href="CSS\pagestyle.css" rel="stylesheet"/>
    </head>

    <body>

        <%
            /* For Filtering */

            String filterCity = null;
            String filterDonationType = null;
            String filterBloodType = null;

            if (request.getParameter("dropdownCity") != null) {
                filterCity = (String) request.getParameter("dropdownCity");
                out.print("<h1> --> " + filterCity + "</h1>");
            }
            if (request.getParameter("dropdownBloodType") != null) {
                filterBloodType = (String) request.getParameter("dropdownBloodType");
            }
            if (request.getParameter("dropdownBloodDonationType") != null) {
                filterDonationType = (String) request.getParameter("dropdownBloodDonationType");
            }

        %>

        <%            int isPosted = -10;
            String filled = (String) request.getParameter("hiddenInput");

            Database.DatabaseConnection connection = new Database.DatabaseConnection();

            if (filled != null) {

                String city = (String) request.getParameter("cityName");
                String hospital = (String) request.getParameter("hospitalName");
                String postBody = (String) request.getParameter("postBody");
                String donationType = (String) request.getParameter("donationType");
                String BloodType = (String) request.getParameter("BloodType");

                String userid = (String) session.getAttribute("userID");
                String currentDate = (String) java.time.LocalDate.now().toString();

                if (connection != null) {
                    isPosted = connection.addPost(userid, BloodType, donationType,
                            city.trim(), hospital.trim(), postBody.trim(), currentDate);
                }

            }

            // to display previous posts
            ResultSet rs = null;
            if (connection != null) {
                rs = connection.getPost();
            }

        %>

        <div class="topnav">
            <img src="Images/Logo.jpg" alt="logo" height="80" width="100" class="logo">
            <a href="Home.jsp">Home</a>
            <a href="View_Post.jsp">Donation Requests</a>
            <a href="Create_Post.jsp">Search for Donors</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="Instraction.jsp">Donation Instraction</a>

            <% if (session.getAttribute("CurrentUser") == null) { %>
            <button class="btn" type="button">Login</button>
            <button class="btn" type="button" >Sign up</button>

            <% } else {%>
            <img src="account.png" class="accountPic" alt="pic"/>  
            <a href=Account.html" class="wel">Welcome <%=session.getAttribute("CurrentUser")%> </a>
            <% } %>

        </div>

        <div class="Header">
            <h1>Blood Donation Requests</h1>
            <div class="simple-text"> Pepole Posts Their Urgent Blood Request, Donate To <strong><span style="color:var(--main_color) ;"> Help </span> </strong>Them. </div>

            <%

                if (isPosted > 0) {
                    out.print("<p>Your Post Has Been Added Successfully!</p>");
                } else if (isPosted != -10) {
                    out.print("<p>Error Occured, Your Post Has not Been Posted.</p>");
                }

            %>

        </div>

        <div class="ParentDiv">

            <div class="SearchDiv">
                <h2 style="color:#e94364c0">Filter Results</h2>

                <form name="filter" action="View_Post.jsp" method="post">

                    <ul class="searchList">
                        <li>Blood Type &dtrif;
                            <ul class="dropdownBloodType1">
                                <li><input type="radio" name="dropdownBloodType" value="AB+"><span>AB+</span></li>
                                <li><input type="radio" name="dropdownBloodType" value="AB-"><span>AB-</span></li>
                                <li><input type="radio" name="dropdownBloodType" value="A+"><span>A+</span></li>
                                <li><input type="radio" name="dropdownBloodType" value="A-"><span>A-</span></li>
                                <li><input type="radio" name="dropdownBloodType" value="B-"><span>B-</span></li>
                                <li><input type="radio" name="dropdownBloodType" value="B+"><span>B+</span></li>
                                <li><input type="radio" name="dropdownBloodType" value="O+"><span>O+</span></li>
                                <li><input type="radio" name="dropdownBloodType" value="O-"><span>O-</span></li>
                            </ul>
                        </li>
                        <li>Blood Donation Type &dtrif;
                            <ul class="dropdownBloodDonationType1">
                                <li><input type="radio" name="dropdownBloodDonationType" value="Whole Blood"><span>Whole blood</span></li>
                                <li><input type="radio" name="dropdownBloodDonationType" value="Platelet"><span>Platelet</span></li>
                                <li><input type="radio" name="dropdownBloodDonationType" value="Plasma"><span>Plasma</span></li>
                            </ul>
                        </li>

                        <li>City &dtrif;
                            <ul class="dropdownCity1">
                                <%                                try {

                                        String[] allcities = new String[200];
                                        ResultSet r = connection.getPost();
                                        int i = 0;
                                        while (r.next()) {
                                            allcities[i] = r.getString("city");
                                            i++;
                                        }

                                        String[] uniquecity = Arrays.stream(allcities).distinct().toArray(String[]::new);

                                        i = 0;
                                        while (i < uniquecity.length) {
                                            if (uniquecity[i] != null) {
                                %>
                                <li><input type="radio" name="dropdownCity"/><span><%=uniquecity[i]%></span></li>
                                        <% }
                                                    i++;
                                                }
                                            } catch (Exception ex) {
                                            }
                                        %>

                            </ul>
                        </li>
                    </ul>
                    <br><br>
                    <button type="submit" class="filter">Filter</button>
                </form>
            </div>

            <div class="Posts" class="g-4" style="width: 60%">

                <%
                    while (rs.next()) {

                        if (filterCity != null && !rs.getString("city").equals(filterCity)) {
                            continue;
                        }

                        if (filterBloodType != null && !rs.getString("bloodType").equals(filterBloodType)) {
                            continue;
                        }

                        if (filterDonationType != null && !rs.getString("donationType").equals(filterDonationType)) {
                            continue;
                        }

                %>

                <div class="col-12">
                    <div class="post text-end bg-white" post-id="70">

                        <div class="person p-3 d-flex justify-content-end align-items-center">
                            <div class="per-img">
                                <img src="Images/account.png" alt="Mohamed Image">
                            </div>

                            <div class="per-inf">
                                <h3><%=rs.getString("username")%></h3>
                                <p class="mb-0">In<b> <%=rs.getString("hospital")%></b> Looking For <b><%=rs.getString("bloodType")%></b> Blood Type</p>
                                <small class="text-secondary"><%=rs.getString("date")%></small>
                            </div>
                        </div>

                        <p class="p-3"><%=rs.getString("postBody")%></p>

                        <div class="details d-flex justify-content-end align-items-center">
                            <div>
                                <span class="BloodTypeSpan"><%=rs.getString("bloodType")%></span>
                            </div>
                            <div class="details-inf me-3">
                                <img class = "donation-type-img" src="Images/donation-type.png" alt="donation-type">
                                <h3 style="padding-left:30px"><%=rs.getString("donationType")%></h3>
                                <img class = "location-img" src="Images/location.png" alt="location">
                                <p class="mb-0 " style="padding-left:30px"><%=rs.getString("city")%>, <%=rs.getString("hospital")%><class="fas fa-map-marker-alt ms-2 text-secondary"></i></p>
                            </div>
                        </div>

                        <div class="num-comments d-flex justify-content-end py-1 px-3">
                        </div>

                        <div class="contact py-2 px-3 ">
                            <ul
                                class="list-unstyled mb-0 d-flex flex-row-reverse flex-wrap position-relative justify-content-center">
                                <li>
                                    <a href = "mailto: <%=rs.getString("email")%>"><button>Donate</button></a>
                                </li>
                            </ul>

                        </div>

                    </div>
                </div>
                <%
                    } // While-loop end

                    request.removeAttribute("dropdownCity");
                    request.removeAttribute("dropdownBloodDonationType");
                    request.removeAttribute("dropdownBloodType");

                %> 
                <!-- ################################################################################################################ -->

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


    </body>

</html>
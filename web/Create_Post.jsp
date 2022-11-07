<%-- 
    Document   : Create_Post
    Created on : Nov 2, 2022, 12:07:08 AM
    Author     : joudalghamdi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/Create_Post.css">
        <link rel="stylesheet" href="CSS/pagestyle.css">
        <script defer src="JavaScript/Create_Post.js"></script>
    </head>

    <body>

        <div class="topnav">
            <img src="Images/Logo.jpg" alt="logo"id="logo">
            <a href="Home.jsp">Home</a>
            <a href="View_Post.jsp">Donation Requests</a>
            <a href="Create_Post.jsp">Search for Donors</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="Instraction.jsp">Donation Instraction</a>

            <% if (session.getAttribute("CurrentUser") == null) { %>
            <button class="btn" type="button" onclick="window.location.href = 'login.jsp'">Login</button>
            <button class="btn" type="button" onclick="window.location.href = 'SignUp.jsp'">Sign up</button>
            <% } else {%>
            <img src="Images/account.png" class="accountPic" alt="pic"/>  
            <a href=Account.html" class="wel">Welcome <%=session.getAttribute("CurrentUser")%> </a>
            <% } %>

        </div>
        <div class="Header">
            <h1>Create Blood Donation Request Post</h1>
            <div class="simple-text"> The Post will be Published on The Website, and Donors Will Then Start Contact You Via Your Email.
            </div>
        </div>

        <div class="post">
            <div class="container">
                <div class="NewPost">
                    <h2>New Post</h2>
                </div>

                <%
                    if (session.getAttribute("CurrentUser") == null) {%>
                <div class="hideCreation">
                    <h1>You Are Not Authorized to Create a Post</h1>
                    <h4>You Should <a href="SignUp.jsp">Sign up</a> to Create a Post, or <a href="login.jsp">login</a> if You Already Have an Account.</h1>
                </div>

                <%
                } else {
                %>

                <form action="View_Post.jsp" method="post" id="postForm">
                    <div class="textField">
                        <label class="Label">City</label>
                        <input type="text" name="cityName" id="cityName" placeholder="i.e. Jeddah" style="z-index: 1" required >
                        <small>Error Messsage</small>
                    </div>
                    <div class="textField3">
                        <label class="Label">Hospital Name</label>
                        <input type="text" name="hospitalName" id="hospitalName" placeholder="i.e. KAU Hospital" required>
                        <small>Error Messsage</small>
                    </div>

                    <div class="row2">
                        <label class="Label">Post Body <span>(Optional)</span></label>
                        <textarea name="postBody" id="postBody" placeholder="Post Length Shouldn't Exceed 140 Letters"></textarea>
                        <small>Error Messsage</small>

                    </div>

                    <div class="dropdownMenu second-drop">
                        <label class="Label">Post Body <span>(Optional)</span></label>

                        <select id="donationType" name="donationType" required>
                            <option selected disabled></option>
                            <option value="Whole Blood">Whole blood</option>
                            <option value="Platelet">Platelet</option>
                            <option value="Plasma">Plasma</option>
                        </select>
                    </div>

                    <div class="textField2 dropdownMenu">
                        <label class="Label">Blood Type</label>
                        <select id="BloodType" name="BloodType" required>
                            <option selected disabled></option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="A-">A-</option>
                            <option value="A+">A+</option>
                            <option value="B-">B-</option>
                            <option value="B+">B+</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                        </select>
                    </div>
                    <input type="text" name="hiddenInput" id="hiddenInput" hidden  value="">

                    <div class="buttons">
                        <button type="submit">Create</button>
                        <button type="reset">Clear</button>
                    </div>

                </form>

                <%
                    }
                %>

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
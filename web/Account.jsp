<%-- 
    Document   : SignUp
    Created on : Oct 27, 2022, 1:30:53 AM
    Author     : Elaf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Account</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="AccountStyle.css" rel="stylesheet"/>
        <link href="CSS/pagestyle.css" rel="stylesheet"/>
    </head>

    <body>
        <div class="topnav">
            <img id="logo" src="Images/Logo.jpg" alt="logo">
            <a href="Index.html">Home</a>
            <a href="process.html">Donation Requests</a>
            <a href="RequirmentQuiz.html">Search for Donors</a>
            <a href="book.html">About Us</a>

        </div>
  
                
       <%
             if (session.getAttribute("username") != null){
                Database.DatabaseConnection connector = new Database.DatabaseConnection();
                ResultSet rs = connector.getUsers();
               
               while( rs.next()) {

        %>

        
        <div class="login-box">
            <h2>Account</h2>
            <div class="Form-Message-Error"> </div> 
            <form name="Account" action="Update.jsp" mathod="POST">
      
                <div class="user-box1">
                    <input type="text" name="username" required maxlength="30" value="<%=rs.getString("username")%>">
                    <label>Username</label>
                    <div class="Form-Input-Error"> </div> 
                </div>

                <div class="user-box1">
                    <input type="password" name="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" value="<%=rs.getString("password")%>">
                    <label>Password</label>
                    <div class="Form-Input-Error"> </div> 
                </div>

                <div class="user-box1">
                    <input type="email" name="email" maxlength="50" value="<%=rs.getString("email")%>"> 
                    <label>Email</label>
                    <div class="Form-Input-Error"> </div> 
                </div>

                <div class="user-box1">
                    <input type="text" name="id" pattern="[0-9]{10}" value="<%=rs.getString("id")%>" > 
                    <label>National ID</label> 
                    <div class="Form-Input-Error"> </div> 
                </div>


                <div class="user-box1">
                    <input type="tel" name="phoneNumber" pattern="(05)?[0,5,3,9,4,6][0-9]{7}" value="<%=rs.getString("phoneNumber")%>">
                    <label>Phone number</label>
                    <div class="Form-Input-Error"> </div> 
                </div>


                <div>
                    <label class="Btype">Birthday </label>
                    <input type="date" id="birthday" name="birthdate" value="<%=rs.getString("birthdate")%>">
                </div> 
                <br/> 
                <div> 
                    <label class="Btype"> Enter your blood type </label>

                    <select class="selectt" name="bloodType"> 
                        <option value="A+">A+</option>			
                        <option value="A-">A-</option>	
                        <option value="B+">B+</option>				
                        <option value="B-">B-</option>    
                        <option value="AB+">AB+</option>   
                        <option value="AB-">AB-</option>  
                        <option value="O+">O+</option>		
                        <option value="O-">O-</option>			
                        <option value="<%=rs.getString("bloodType")%>" selected="selected">Type</option>    
                    </select> 
                </div> 

                <br/>
                <div class="submit">
                    <a href="#">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>

                        <input id="dis" type="submit" name="sign up" value="Update"/>
                    </a>
                </div>
            </form>
  </div>
  <%}}
else{
%>
                        <script>
                           alert("You have to log in first") ;
                           window.location.href='login.jsp'; 
                        </script>
                      
                        <%


}
  
  %> 
       <!-- --------------- Footer section --------------- -->
        <br /><br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br /><br />

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


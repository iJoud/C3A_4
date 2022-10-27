<%-- 
    Document   : SignUp
    Created on : Oct 27, 2022, 1:30:53 AM
    Author     : Elaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Sign up Form</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="SignupStyle.css" rel="stylesheet"/>
    </head>

    <body>
        <div class="topnav">
            <img id="logo" src="Logo.jpg" alt="logo">
            <a href="Index.html">Home</a>
            <a href="process.html">Donation Requests</a>
            <a href="RequirmentQuiz.html">Search for Donors</a>
            <a href="book.html">About Us</a>
            <button class="btn" type="button">Login</button>
            <button class="btn" type="button">Sign up</button>
        </div>

        <div> 
            <p id="welcome">Create new account<span id="dot">.</span> </p> 
            <p id="already">Already a member? <a href=""> Login</a> </p> 
        </div> 


        <div class="login-box">
            <h2>Sign Up</h2>
            <form>
                <div class="user-box1">
                    <input type="text" name="username" required maxlength="30">
                    <label>Username</label>
                </div>

                <div class="user-box1">
                    <input type="password" name="pass" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> 
                    <label>Password</label>
                </div>

                <div class="user-box1">
                    <input type="email" name="email" maxlength="50" required> 
                    <label>Email</label>
                </div>

                <div class="user-box1">
                    <input type="text" name="id" pattern="[0-9]{10}" required > 
                    <label>National ID</label> 
                </div>


                <div class="user-box1">
                    <input type="tel" name="phoneNumber" pattern="(05)?[0,5,3,9,4,6][0-9]{7}" required>
                    <label>Phone number</label>
                </div>


                <div>
                    <label class="Btype" for="birthday">Birthday </label>
                    <input type="date" id="birthday" name="birthday">
                </div> 
                <br/> 
                <div> 
                    <label class="Btype" for="blood"> Enter your blood type </label>

                    <select class="selectt" name="LastDonation"> 
                        <option value="A+">A+</option>			
                        <option value="A-">A-</option>	
                        <option value="B+">B+</option>				
                        <option value="B-">B-</option>    
                        <option value="AB+">AB+</option>   
                        <option value="AB-">AB-</option>  
                        <option value="O+">O+</option>		
                        <option value="O-">O-</option>			
                        <option value="Type" selected="selected">Type</option>    
                    </select> 

                </div> 


                <div class="submit">
                    <a href="#">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        Submit
                    </a>
                </div>
            </form>
        </div>

        <div>
            <img id="homepagephoto" src="Homepage.png" alt="homepage"/>
        </div> 

        <div class="signature"> 
            <br/>
        </div>  
    </body> 
</html>


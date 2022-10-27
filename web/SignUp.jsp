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
        <link href="PagesStyle.css" rel="stylesheet"/>

    </head>

    <body>

        <div class="topnav">
            <img src="\LifeQuest\web\Images\Logo.jpg" alt="logo" height="40">
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
                    <input type="text" name="username" value="" size="20"/>
                    <label>Username</label>
                </div>

                <div class="user-box1">
                    <input type="password" name="password" value="" size="20"/>
                    <label>Password</label>
                </div>

                <div class="user-box1">
                    <input type="text" name="email" value="" size="20"/>
                    <label>Email</label>
                </div>

                <div class="user-box1">
                    <input type="text" name="phone" value="" size="10"/>
                    <label>Phone number</label>
                </div>

                <div> 
                    <label class="bloodtypes" for="blood"> Enter your blood type </label>

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

        <div class="photo">
            <img id="homepagephoto" src="LifeQuest/web/Images/Homepage.png" alt="homepage"/>
        </div> 

        
	<div class="signature"> 
	<br/>
	</div> 
        
    </body> 
</html>


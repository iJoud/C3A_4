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
        <link href="CSS\SignupStyle.css" rel="stylesheet"/>
        <link href="CSS\pagestyle.css" rel="stylesheet"/>
    </head>

    <body>
        <div class="topnav">
            <img id="logo" src="Images/Logo.jpg" alt="logo">
            <a href="Home.jsp">Home</a>
            <a href="View_Post.jsp">Donation Requests</a>
            <a href="Create_Post.jsp">Search for Donors</a>
            <a href="AboutUs.jsp">About Us</a>
            <a href="Instraction.jsp">Donation Instraction</a>

        </div>

        <div> 
            <p id="welcome">Create new account<span id="dot">.</span> </p> 
            <p id="already">Already a member? <a href="login.jsp"> Login</a> </p> 
        </div> 


        <div class="login-box">
            <h2>Sign Up</h2>
            <div class="Form-Message-Error"> </div> 
            <form name="AccountForm" action="AccountCreation.jsp" method="POST">
                <div class="user-box1">
                    <input type="text" name="username" required maxlength="30">
                    <label>Username</label>
                    <div class="Form-Input-Error"> </div> 
                </div>

                <div class="user-box1">
                    <input type="password" name="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                    <label>Password</label>
                    <div class="Form-Input-Error"> </div> 
                </div>

                <div class="user-box1">
                    <input type="email" name="email" maxlength="50" required> 
                    <label>Email</label>
                    <div class="Form-Input-Error"> </div> 
                </div>

                <div class="user-box1">
                    <input type="text" name="id" pattern="[0-9]{10}" required > 
                    <label>National ID</label> 
                    <div class="Form-Input-Error"> </div> 
                </div>


                <div class="user-box1">
                    <input type="tel" name="phoneNumber" pattern="(05)?[0,5,3,9,4,6][0-9]{7}" required>
                    <label>Phone number</label>
                    <div class="Form-Input-Error"> </div> 
                </div>


                <div>
                    <label class="Btype">Birthday </label>
                    <input type="date" id="birthday" name="birthdate">
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
                        <option value="Type" selected="selected">Type</option>    
                    </select> 
                </div> 

                <br/>
                <div class="submit">
                    <a href="#">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>

                        <input id="dis" type="submit" name="signup" value="Submit" />
                    </a>
                </div>
            </form>
        </div>

        <div>
            <img id="homepagephoto" src="Images\Homepage.png" alt="homepage"/>
        </div> 

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

        <script>


            const userInput = document.querySelectorAll("input");

            const label = document.querySelectorAll("label");



            for (let index = 0; index < userInput.length; index++) {
                const input = userInput[index];
                input.addEventListener('input', function () {
                    if (input.value.length > 0) {

                        label[index].style.top = "-20px";
                    } else if (input.value.length == 0 && label[index].style.top == "-20px") {
                        label[index].style.top = "0";

                    }
                });

            }



            function ValidateEmail(enteredemail) {

                var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;


                if (enteredemail.value.match(mailformat)) {
                    return true;
                } else {

                    alert("You have entered an invalid email address!"); //The pop up alert for an invalid email address
                    document.loginform.email.focus();
                    return false;
                }
            }

        </script>

    </body> 
</html>


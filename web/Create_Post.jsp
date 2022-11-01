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
    <script defer src="JavaScript/Create_Post.js"></script>
</head>

<body>

    <div class="topnav">
        <img src="Images/Logo.jpg" alt="logo" height="80" width="100" class="logo">
        <a href="Index.html">Home</a>
        <a href="process.html">Donation Requests</a>
        <a href="RequirmentQuiz.html">Search for Donors</a>
        <a href="book.html">About Us</a>
        <button class="btn" type="button">Login</button>
        <button class="btn" type="button">Sign up</button>
    </div>

    <div class="Header">
        <h1>Create Blood Donation Request Post</h1>
        <div class="simple-text"> The Post will be Published on The Website, and Donors Will Then Start Contact You.
        </div>
    </div>

    <div class="post">
        <div class="container">
            <div class="NewPost">
                <h2>New Post</h2>
            </div>

            <form action="View_Posts.html" method="post" id="postForm">
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
                        <option value="whole-blood">Whole blood</option>
                        <option value="Platelet">Platelet</option>
                        <option value="Plasma">Plasma</option>
                    </select>
                </div>

                <div class="textField2 dropdownMenu">
                    <label class="Label">Blood Type</label>
                    <select id="BloodType" name="BloodType" required>
                        <option selected disabled></option>
                        <option value="ABm">AB+</option>
                        <option value="ABp">AB-</option>
                        <option value="Am">A-</option>
                        <option value="Ap">A+</option>
                        <option value="Bm">B-</option>
                        <option value="Bp">B+</option>
                        <option value="Op">O+</option>
                        <option value="Om">O-</option>
                    </select>
                </div>

                <div class="buttons">
                    <button type="submit">Create</button>
                    <button type="reset">Clear</button>
                </div>

            </form>
        </div>
    </div>



</body>

</html>
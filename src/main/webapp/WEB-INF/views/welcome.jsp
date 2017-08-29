<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOMEPAGE</title>
    <link href="/resources/css/SignUpLogIn.css" rel="stylesheet">
    <%--<link href="/resources/CSS/carousel.css" rel="stylesheet">--%>


    <script src="https://ucarecdn.com/libs/widget/3.1.2/uploadcare.full.min.js" charset="utf-8"></script>

    <script>
        UPLOADCARE_PUBLIC_KEY = 'e71a6ed89f8acaed4d28';
    </script>


</head>
<body>


<h1 align = "center">MoGo With Me</h1>

<h2>About Us</h2>

<p class="aboutus">
    MoGo Provided the Bikes. We’re Providing the People.

    Why ride alone when you can ride together? MoGo With Me connects MoGo cyclists together with a platform for requesting cyclists to join their ride so no cyclist has to ride alone. Sign up, create your route, and meet your MoGo buddy today!

</p>

<!-- SIGN UP BUTTON THAT HOLDS REGISTRATION BUTTON -->

<!-- Button to open modal -->
<button onclick="document.getElementById('id01').style.display='block'" class="onscreensignup">Sign Up</button>

<!-- The Modal (contains the Sign Up form) -->
<div id="id01" class="modal">
    <!-- This creates the X in top right corner -->
    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    <!-- action =/addCustomer calls the addCustomer script in the HomeController-->
    <form class="modal-content animate" action="/addCustomer">
        <div class="container">
            <label><b>First Name</b></label>
            <input type="text" placeholder="Enter First Name" name="FirstName" required>

            <label><b>Last Name</b></label>
            <input type="text" placeholder="Enter Last Name" name="LastName" required>

            <label><b>E-Mail</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>

            <label><b>Phone Number</b></label>
            <input type="text" placeholder="Enter Phone Number" name="phoneNumber" required>

            <label><b>Company</b></label>
            <input type="text" placeholder="Enter Company" name="Company" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <label><b>Re-Enter Password</b></label>
            <input type="password" placeholder="Re-Enter Password" name="passwordtwo" required>


            <input type="radio" name="gender" value="male"> Male
            <input type="radio" name="gender" value="female"> Female

            <br/>

            Please Upload A Picture:
            <input type="hidden" role="uploadcare-uploader" name="profilePicture"/>


            <input type="checkbox" checked="checked"> Remember me
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

            <div class = "clearfix">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Sign Up</button>
            </div>
        </div>
    </form>
</div>


<!-- LOG IN BUTTON THAT HOLDS LOG IN INFORMATION -->

<button onclick="document.getElementById('id02').style.display = 'block'" class="onscreenlogin">Login</button>


<!-- This creates the X in top right corner -->
<div id = "id02" class="modal">
    <span onclick="document.getElementById('id02').style.display = 'none'" class="close" title = "Close Modal">x</span>

    <!-- Adds Avatar/User Picture to form -->
    <form class="modal-content animate" action = "/verifylogin">
        <div class="imgcontainer"><img src="resources/images/female.png" alt="Avatar" class="avatar"></div>


        <div class="container" style="background-color: #f1f1f1">
            <label> <b>E-Mail</b></label>
            <input type="text" placeholder="Enter E-Mail" name="email" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password"required>

            <button type="submit">Log In</button>
            <input type="checkbox" checked="checked">Remember Me</div>


        <div class="clearfix">
            <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtntwo">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>
</div>

</body>
</html>
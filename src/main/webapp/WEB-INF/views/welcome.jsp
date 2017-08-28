<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOMEPAGE</title>
    <link href="/resources/css/SignUpLogIn.css" rel="stylesheet">
    <link href="/resources/CSS/carousel.css" rel="stylesheet">

</head>
<body>


<h1 align = "center">MOGO BUDDY</h1>

<h2>About Us</h2>


<p class="aboutus">
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
    non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
            <input type="file" name="pic" accept="image/*">


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
    <form class="modal-content animate" action = "/action_page.php">
        <div class="imgcontainer"><img src="resources/images/female.png" alt="Avatar" class="avatar"></div>


        <div class="container" style="background-color: #f1f1f1">
            <label> <b>E-Mail</b></label>
            <input type="text" placeholder="Enter E-Mail" name="email" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw"required>

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

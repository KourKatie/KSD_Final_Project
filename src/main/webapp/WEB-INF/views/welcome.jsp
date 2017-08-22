<%--
  Created by IntelliJ IDEA.
  User: Delwar
  Date: 8/11/2017
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.

  JSP - Java Server Page
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome!</title>
    <%--<link rel="stylesheet" href="/resources/css/styles.css" >--%>

</head>

<%-- Creates a link to the form page--%>

<%--<body background="${pageContext.request.contextPath}/resources/images/bike.jpg">--%>
<body>
<br />
<h1> Company Name TBD </h1>



<h2>About Us </h2>

<p>

    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
    non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

</p>

<!-- SIGN UP BUTTON THAT HOLDS THE REGISTRATION FORM -->

<!-- Button to open the modal -->
<button onclick="document.getElementById('id01').style.display='block'" class="onscreensubmit">Sign Up</button>

<!-- The Modal (contains the Sign Up form) -->
<div id="id01" class="modal">
    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
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

            <label><b>Cell Phone Provider</b></label>
            <input type="text" placeholder="Enter Cell Phone Provider" name="cellProvider" required>

            <label><b>Company</b></label>
            <input type="text" placeholder="Enter Company" name="Company" required>

            <label><b>Vehicle MPG</b></label>
            <input type="text" placeholder="Enter Vehicle MPG" name="vehicleMPG" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <label><b>Re-Enter Password</b></label>
            <input type="password" placeholder="Re-Enter Password" name="passwordtwo" required>


            <input type="radio" name="gender" value="male"> Male<br>
            <input type="radio" name="gender" value="female"> Female<br>

            <br/>
            <!--
            Please Upload A Picture:
            <input type="file" name="pic" accept="image/*">
            <input type="submit">
-->
            <br/>

            <input type="checkbox" checked="checked"> Remember me
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
        </div> </form>
    <div class="clearfix">
            <form action = "/requestpage">

                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Sign Up</button>

            </form>
    </div>
        </div>

</body>

</body>
</html>

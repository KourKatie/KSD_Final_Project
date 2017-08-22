<%--
  Created by IntelliJ IDEA.
  User: kae
  Date: 8/22/2017
  Time: 10:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
</head>
<body>

<h1>Company Name</h1> <!-- Needs to be centered CSS -->

<h3>User Profile</h3> <!-- Needs to be centered CSS -->

<!-- User info will be centered as well possibly next to profile picture -->
First Name: ${FirstName} <br/>
Last Name: ${LastName}<br/>
Gender: ${gender}<br/>
Company: ${Company}<br/>
Email: ${email}<br/>
Phone Number: ${phoneNumber}<br/>
Phone Provider: ${cellProvider}<br/>
Vehicle MPG: ${vehicleMPG}<br/>



<button type="button" onclick="alert('You have updated your profile')">Update</button>
<button type ="button" onclick="alert('You have deleted your profile')">Delete</button>

<br/>
<br/>

History:

<br/>

<!-- History will come from the database -->

<br/>
Statistics

<br/>
Gas Saved:
<br/>
Money Saved:
<br/>
Rides Completed:
<br/>
Calories Burned:
<br/>
Miles Biked:
<br/>
Environmental Impact:
<br/>


</body>
</html>

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

<h1 align="center">Mogo With Me</h1> <

<h3 align="center">User Profile</h3> <!-- Needs to be centered CSS -->

<input type="hidden" name="UserId" value="${UserId}">

<div align="center"><!-- User info will be centered as well possibly next to profile picture -->
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
</div>

</body>
</html>

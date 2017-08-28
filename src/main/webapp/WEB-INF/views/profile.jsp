<%--
  Created by IntelliJ IDEA.
  User: kae
  Date: 8/22/2017
  Time: 10:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
</head>
<body>

<h1 align="center">Mogo With Me</h1>

<h3 align="center">User Profile</h3>

<div align="center">

    <c:forEach items="${ppdata}" var="item">

       <img src=${item.profilePicture}> <br />
    First Name: ${item.firstName} <br>
    Last Name: ${item.lastName} <br>
        Email: ${item.email} <br>
        PhoneNumber: ${item.phoneNumber}<br>
    Company: ${item.company} <br>
    Gender: ${item.gender} <br>

    </c:forEach>

<button type="button" onclick="alert('You have updated your profile')">Update</button>
<button type ="button" onclick="alert('You have deleted your profile')">Delete</button>

<br/>
<br/>
</div>

</body>
</html>

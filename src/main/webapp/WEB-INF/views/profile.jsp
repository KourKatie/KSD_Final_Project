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
    <style>
        @import url('https://fonts.googleapis.com/css?family=Varela');
        body {
            font-family: 'Varela', sans-serif;
            font-size: 25px;
        }
    </style>

    <link href="/resources/css/profiles.css" rel="stylesheet">
</head>

<body>


<h1 align="center">MoGo With Me</h1>

<h2 align="center">Profile Information</h2>

<div>

<c:forEach items="${ppdata}" var="item">

    <img src= "${item.profilePicture}" width="375" height="375">
        <p>First Name: ${item.firstName} </p>
        <p>Last Name: ${item.lastName} </p>
        <p>Email: ${item.email} </p>
        <p>PhoneNumber: ${item.phoneNumber} </p>
        <p>Company: ${item.company}</p>
        <p>Gender: ${item.gender} </p>

        <form action="/viewHistory">
            <input type="submit" name="submit" value="View History">
            <input type="hidden" name="UserId" value="${UserId}">
        </form>

    </c:forEach>

    </div>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/28/2017
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Match Profile</title>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Varela');
        body {
            font-family: 'Varela', sans-serif;
            font-size: 25px;
        }
        h1 {
            font-family: 'Varela', sans-serif;
            font-size: 40px;
            color: black;
        }
    </style>

    <link href="/resources/css/profiles.css" rel="stylesheet">
</head>

<h1 align="center">
    MoGo With Me
</h1>


<body>

<div>
<c:forEach items="${updata}" var="item">


    <img src= "${item.profilePicture}" width="200" height="217">

        <p>First Name: ${item.firstName} </p>
        <p>Last Name: ${item.lastName} </p>
        <p>Company: ${item.company}</p>
        <p>Gender: ${item.gender} </p>

    </c:forEach>

</div>

</body>
</html>


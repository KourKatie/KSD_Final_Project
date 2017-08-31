<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/28/2017
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Requests</title>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Varela');
        body {
            font-family: 'Varela', sans-serif;
            font-size: 15px;
        }
        h1 {
            font-family: 'Varela', sans-serif;
            font-size: 40px;
            color: black;
        }
    </style>

    <link href="/resources/css/matches.css" rel="stylesheet">
</head>
<body>
<h1 align="center">MoGo With Me</h1>
<h3 align="center">Here is a list of all current requests stored in our database</h3>
<table align="center">
    <tr>
        <th>Profile</th>
        <th>Name</th>
        <th>Company</th>
        <th>Gender</th>
        <th>Departure Station</th>
        <th>Arrival Station </th>
        <th>Date</th>
        <th>Time</th>
        <th>Message</th>
        <th>Request</th>
    </tr>

    <c:forEach items="${ardata}" var="item">

        <tr>
            <form action="/getMatchProfile">
                <td><input type="submit" name="submit" value="Profile">
                    <input type="hidden" name="phoneNumber"
                           value="${item.phoneNumber}"></td>
            </form>

            <td> ${item.firstName} </td>
            <td> ${item.company} </td>
            <td> ${item.gender}</td>
            <td> ${item.departure} </td>
            <td> ${item.arrival} </td>
            <td> ${item.date} </td>
            <td> ${item.time}</td>
            <td> ${item.message} </td>

            <form action="messageconfirmation">
                <input type="hidden" name="UserId" value="${UserId}">
                <td><input type = submit name="submit" value = "submit">
                    <input type="hidden" name="phoneNumber"
                           value="${item.phoneNumber}"></td>
            </form>
        </tr>

    </c:forEach>
</table>

</body>
</html>

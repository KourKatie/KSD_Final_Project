<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/22/2017
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Matches</title>
</head>
<body>

            <h1 align="center">
                MoGo With Me
            </h1>

<p></p>
<div align="center">
    Matches for <strong>${date}</strong> in the <strong>${time}</strong> deaparting from <strong>${departure}</strong>
    station and arriving at <strong>${arrival}</strong> station.
</div>


<p></p>
<table align="center">
    <tr>
        <th>Profile</th>
        <th>Name</th>
        <th>Company</th>
        <th>gender</th>
        <th>Departure Station</th>
        <th>Arrival Station </th>
        <th> Date </th>
        <th>message</th>
        <th>Request</th>
    </tr>

    <c:forEach items="${mdata}" var="item">

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
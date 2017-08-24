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
<h1 align="center">MoGo With Me</h1>
<p></p>
<div align="center">
Matches for <strong>${date}</strong> in the <strong>${time}</strong> deaparting from <strong>${departure}</strong>
station and arriving at <strong>${arrival}</strong> station.
</div>
<p></p>
<table align="center">
<tr>
    <th>Name</th>
    <th>message</th>
    <th>Company</th>
    <th>Departure Station</th>
    <th>Arrival Station </th>
    <th> Date </th>
    <th>gender</th>
    <th>Request</th>
</tr>
<c:forEach items="${mdata}" var="item">
    <tr>
        <td> ${item.firstName} </td>
        <td> ${item.gender} </td>
        <td> ${item.company} </td>
        <td> ${item.departure}</td>
        <td> ${item.arrival} </td>
        <td> ${item.date} </td>
        <td> ${item.message} </td>
        <td>Button Here <br> </td>
    </tr>
    <%--<form action="getMatches" method="post">--%>
        <%--<input type="hidden" name="userID"--%>
               <%--value="${item.userID}">--%>
    <%--</form>--%>
    </c:forEach>
</table>

<button> </button>

</body>
</html>

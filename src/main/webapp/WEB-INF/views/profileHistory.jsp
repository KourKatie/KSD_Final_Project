<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/29/2017
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile History</title>
</head>
<body>
<h1 align="center">Mogo With Me</h1>

<h3 align="center">User History</h3>

        <table align="center">
    <c:forEach items="${updata}" var="item">

        <tr>
            <th>Date</th>
            <th>Departure Station</th>
            <th>Arrival Station</th>
            <th>Time</th>
            <th>Message</th>
        </tr>
        <tr>
            <td>${item.date}</td>
            <td>${item.departure}</td>
            <td>${item.arrival}</td>
            <td>${item.time}</td>
            <td>${item.message}</td> <br>
        </tr>

    </c:forEach>
</table>

</body>
</html>

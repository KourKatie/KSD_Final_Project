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
<h1>Company Name</h1>
<p></p>
Matches for ${date} in the ${time} deaparting from ${departure} station and arriving at ${arrival} station.
<table>
<tr>
<th>Name</th>
    <th>First Name</th>
    <th>Gender</th>
    <th>Company</th>
    <th>Frequency</th>
    <th>Message</th>
    <th>Request</th>
</tr>
<c:forEach items="${mdata}" var="item">
    <tr>
        <td> ${item.firstname} ${item.gender} ${item.company} ${item.frequency} ${message} </td>
    </tr>
    <form action="getMatches" method="post">
        <input type="hidden" name="userID"
               value="${item.userID}">
        <input type="submit" value="Remove Customer">
    </form>
    </c:forEach>
</table>
</body>
</html>

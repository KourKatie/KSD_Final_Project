<%--
  Created by IntelliJ IDEA.
  User: Delwar
  Date: 8/16/2017
  Time: 11:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table border="1">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Username</th>
        <th>Delete?</th>
    </tr>
    <c:forEach items="${cdata}" var="item">
        <tr>
            <td>${item.userID}</td>
            <td>${item.fname}</td>
            <td> ${item.lname}</td>
            <td>${item.username}</td>
            <td>
                <form action="/deleteCustomer" method="post">
                    <input type="hidden" name="fname"
                           value="${item.userID}">
                    <input type="submit" value="Remove Customer">
                </form>

            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
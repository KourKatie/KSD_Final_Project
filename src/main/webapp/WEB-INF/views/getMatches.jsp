<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/23/2017
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Get Matches</title>
</head>
<body>
<table>
    <tr>
        <th>First Name</th>
        <th>Gender</th>
        <th>Company</th>
        <th>Message</th>
    </tr>
    <c:forEach items="${mdata}" var="item">
        <tr>
            <td> ${item.firstName}
                    ${item.gender}
                    ${item.company}
                    ${item.message} <br> </td>
        </tr>
        <%--<form action="getMatches" method="post">--%>
        <%--<input type="hidden" name="userID"--%>
        <%--value="${item.userID}">--%>
        <%--</form>--%>
    </c:forEach>
</table>

</body>
</html>
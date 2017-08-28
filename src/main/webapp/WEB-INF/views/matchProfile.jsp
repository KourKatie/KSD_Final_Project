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
</head>
<body align="center">

<c:forEach items="${updata}" var="item">

First Name: ${item.firstName} <br>
Last Name: ${item.lastName} <br>
Company: ${item.company} <br>
Gender: ${item.gender} <br>
</c:forEach>

</body>
</html>

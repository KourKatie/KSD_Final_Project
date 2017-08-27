<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/27/2017
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
</head>
<body>

Your account was successfully created. Please log in to continue. <br>

<form name="loginform" action="/verifylogin" method="post">

    <label>Email</label>
    <input type="text" name="email" placeholder="Email">
    <label>Password</label>
    <input type="password" name="password" placeholder="password">
    <input type="submit" name="submit" value="Log In"/>

</form>
</body>
</html>

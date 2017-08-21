<%--
  Created by IntelliJ IDEA.
  User: Delwar
  Date: 8/12/2017
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <link href="/resources/css/styles.css" rel="stylesheet">
</head>
<body background="${pageContext.request.contextPath}/resources/images/background3.jpg">
<div id="parent">
<%-- the action "signinresponse" can be replaced with a link so when someone clicks the
button it takes them to a new page. Having the just the name of the page works--%>
<form id = "form_login" action = "/selectlocation" method = "post" >

User Name: <input align="left" type = "text"  name = "username">
Password: <input type = password name = "password">

    <%--<input type = "submit" name = "signin" value = "Sign In">--%>

    <button class="button" style="vertical-align:middle"><span><a href = "/selectlocation">Sign In</a></span></button>

</form>
</div>

</body>
</html>

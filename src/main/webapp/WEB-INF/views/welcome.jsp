<%--
  Created by IntelliJ IDEA.
  User: Delwar
  Date: 8/11/2017
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.

  JSP - Java Server Page
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome!</title>
    <link rel="stylesheet" href="/resources/css/styles.css" >

</head>

<%-- Creates a link to the form page--%>

<body background="${pageContext.request.contextPath}/resources/images/bike.jpg">

<br />
<h1> Company Name TBD </h1>

${message} <br />

<h2>About Us </h2>

<button class="button" style="vertical-align:middle"><span><a href = "userform">Create Account</a></span></button><br />
<button class="button" style="vertical-align:middle"><span><a href = "signin">Log In</a></span></button><br />

</body>
</html>

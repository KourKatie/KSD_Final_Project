<%--
  Created by IntelliJ IDEA.
  User: Delwar
  Date: 8/16/2017
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Added</title>
    <script src="https://ucarecdn.com/libs/widget/3.1.2/uploadcare.full.min.js" charset="utf-8"></script>
</head>
<body>

Added customer:<br>
<li>${UserId}</li>
<li>${FirstName}</li>
<li>${LastName}</li>
<li>${email}</li>
<li>${phoneNumber} </li>
<li>${Company} </li>
<li>${gender}</li>
<li>${password}</li>
<li>${profilePicture}</li>

<a href = "userform">Create Account</a>

</body>
</html>

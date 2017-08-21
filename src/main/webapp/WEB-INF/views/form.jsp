<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: Delwar
  Date: 8/11/2017
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Form</title>
</head>
<link href="/resources/css/styles.css" rel="stylesheet">

<%--<script>
function validateForm() {
    var fname = document.forms["userform"]["fname"].value;
    if (fname == "") {
        alert("First Name must be filled out");
        return false;
    }

    var lname = document.forms["userform"]["lname"].value;
    if (lname == ""){
        alert("Last name must be filled out")
    }

}
</script>--%>

<body background="${pageContext.request.contextPath}/resources/images/background3.jpg">

<%--${inst}--%>

<form name = userform action = "/addCustomer" method = "post" onsubmit="return validateForm()" >
    <fieldset>

        <legend>Information:</legend>

        <h1>Enter Account Details</h1>
        <%--Adding fields to the form--%>
        First Name: <input type = "text" name = "FirstName" required> <br />
        Last Name:  <input type = "text"  name = "LastName" required> <br />
        Email: <input type = "email"  name = "email" required> <br />
        Phone Number: <input type = "number" name = "phoneNumber" required>  <br />

        Cell Provider: <input type = "text" name = "cellProvider" > <br />
        Company: <input type = "text" name = "Company" > <br />

        Gender: <input type = "text" name = "gender" > <br />
        Password: <input type = "password" name = "password" > <br />
        Vehilce MPG: <input type = "number" name = "vehicleMPG" > <br />
        Profile Pic: <input type = "text" name = "profilePic" > <br />
        <input type = "submit" name = "submit" value = "Submit" />

    </fieldset>
</form>


</body>
</html>

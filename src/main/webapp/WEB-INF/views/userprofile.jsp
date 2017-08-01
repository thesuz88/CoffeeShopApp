<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 7/21/2017
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>

    <link type="text/css" rel="stylesheet" href="webresources/addusercss.css">

</head>
<body>
<h2>Welcome, ${firstName}!</h2>
<a href="/">Back to homepage</a>
<br>
<p>
    <h4>Profile Information</h4>
    <table>
        <tr>
            <th>First Name:</th>
            <td>${firstName}</td>
        </tr>
        <tr>
            <th>Last Name:</th>
            <td>${lastName}</td>
        </tr>
        <tr>
            <th>Favorite Coffee:</th>
            <td>${favoriteCoffee}</td>
        </tr>
        <tr>
            <th>Address:</th>
            <td>${address}</td>
        </tr>
        <tr>
            <th>City:</th>
            <td>${city}</td>
        </tr>
        <tr>
            <th>State:</th>
            <td>${state}</td>
        </tr>
        <tr>
            <th>Zip:</th>
            <td>${zip}</td>
        </tr>
        <tr>
            <th>Email:</th>
            <td>${email}</td>
        </tr>
        <tr>
            <th>Password:</th>
            <td>${password}</td>
        </tr>
    </table>

</p>
</body>
</html>

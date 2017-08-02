<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 7/21/2017
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Register</title>
    <link type="text/css" rel="stylesheet" href="\webresources\registerformcss.css">

</head>
<body>
<h1>Thank you for registering as a customer</h1>
<h3>Please fill out all fields to continue</h3>
<p>
    <a href="/">Back to homepage</a>
<form name="userForm" method="post" onsubmit="return validateForm()" action="registerNewUser">
    <fieldset name="customerName">
        <legend>Name</legend>
        <label>First Name:</label><input name="firstName"><span class="invalid"></span>
        <br>
        <label>Last Name:</label><input name="lastName"><span class="invalid"></span>
        <br>
        <label>Favorite Coffee</label>
        <select name="favoriteCoffee" id="favoriteCoffee">
            <option id="fav1" value="Detroit Blend">Detroit Blend</option>
            <option id="fav2" value="Cappuccino">Cappuccino</option>
            <option id="fav3" value="Caramel Macchiatto">Caramel Macchiatto</option>
            <option id="fav4" value="Iced Coffee">Iced Coffee</option>
        </select>
    </fieldset>
    <fieldset name="personalInfo">
        <legend>Contact</legend>
        <label>Address:</label>
        <input name="address"><span class="invalid"></span>
        <br>
        <label>City:</label>
        <input name="city"><span class="invalid"></span>
        <br>
        <label>State:</label>
        <input name="state"><span class="invalid"></span>
        <br>
        <label>Zip:</label>
        <input name="zip"><span class="invalid"></span>
        <br>
    </fieldset>
    <br>
    <fieldset name="loginInfo">
        <legend>Login</legend>
        <label>Email:</label>
        <input type="email" name="email"><span class="invalid"></span>
        <br>
        <label>Password:</label>
        <input type="password" name="password"><span class="invalid"></span>
        <br>
        <label>Confirm Password:</label>
        <input type="password" name="cpassword"><span class="invalid"></span>
        <br>
    </fieldset>
    <br>
    <button name="submit" value="Submit">Register</button>
</form>
</p>

<script src="\webresources\formvalidation.js"></script>
</body>
</html>

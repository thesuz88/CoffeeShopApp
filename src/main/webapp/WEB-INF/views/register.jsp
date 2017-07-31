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
    <!--Need to make sure the form has the action to call the method taking in the parameters entered!-->
<form name="userForm" method="post" onsubmit="return validateForm()" action="/adduser">
    <fieldset name="customerName">
        <legend>Name</legend>
        <label>First Name:</label><input type="text" name="firstName"><span class="invalid"></span>
        <br>
        <label>Last Name:</label><input type="text" name="lastName"><span class="invalid"></span>
        <br>
        <label>Favorite Coffee</label>
        <select name="favoriteCoffee" id="favoriteCoffee">
            <option value="detroitBlend">Detroit Blend</option>
            <option value="cappuccino">Cappuccino</option>
            <option value="caramelMacchiatto">Caramel Macchiatto</option>
            <option value="icedCoffee">Iced Coffee</option>
        </select>
    </fieldset>
    <fieldset name="personalInfo">
        <legend>Contact</legend>
        <label>Address:</label>
        <input type="text" name="address"><span class="invalid"></span>
        <br>
        <label>City:</label>
        <input type="text" name="city"><span class="invalid"></span>
        <br>
        <label>State:</label>
        <input type="text" name="state"><span class="invalid"></span>
        <br>
        <label>Zip:</label>
        <input type="text" name="zip"><span class="invalid"></span>
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

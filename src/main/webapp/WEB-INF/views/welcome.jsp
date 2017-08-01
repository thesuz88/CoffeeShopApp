<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 7/21/2017
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GC Coffee</title>
    <link type="text/css" rel="stylesheet" href="\webresources\welcomecss.css">

</head>
<body>

<h1>Welcome to GC COFFEE!</h1>

    <p>
        Register as a customer
    <form action="register">
        <button class="register">Register</button>
    </form>
    </p>

<div>
    <p>
    <h3>Please select the items you wish to order:</h3>
    <br>
    <fieldset>
        <legend>GC Coffee Menu:</legend>
        <button class="cartItem" onclick="return addDetroitBlend()" type="button">Add Item</button>
        <label>Detroit Blend - $1.49</label>
        <br><br>
        <button class="cartItem" onclick="addCappuccino()" type="button">Add Item</button>
        <label>Cappuccino - $2.24</label>
        <br> <br>
        <button class="cartItem" onclick="addCaramelMacc()" type="button">Add Item</button>
        <label>Caramel Macchiatto - $3.99</label>
        <br> <br>
        <button class="cartItem" onclick="addIcedCoffee()" type="button">Add Item</button>
        <label>Iced Coffee - $2.49</label>
        <br> <br>
        <button class="cartItem" onclick="addScone()" type="button">Add Item</button>
        <label>Scone - $1.99</label>
        <br>
        <br>
    </fieldset>
    <fieldset>
        <button id="checkout" onclick="checkOut()">Check Out</button>
    <p class="showBlend"></p>
    <p class="showCapp"></p>
    <p class="showMacc"></p>
    <p class="showIced"></p>
    <p class="showScone"></p>
    <p class="showSubtotal"></p>
    </fieldset>

    </p>
</div>
<p>

<form action="itemsadmin">
    <button>Admin Login</button>
</form>
</p>
<script src="\webresources\coffeelist.js"></script>
</body>
</html>

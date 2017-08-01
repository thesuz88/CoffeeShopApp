<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 7/31/2017
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Item</title>
</head>
<style>
    body {
        background-color: antiquewhite;
    }
    a {
        font-size: smaller;
        font-family: "Calibri", sans-serif;

    }

</style>
<body>

<h1>Add New Item</h1>
<p>
    <a href="itemsadmin">See Item List</a>
</p>
<form action="addItem" method="post">
    Name:<input type="text" name="itemName" required><br>
    Description:<input type="text" name="itemDescription"><br>
    Price:<input type="text" name="itemPrice" required><br>
    Quantity:<input type="text" name="itemQuantity" required>
    <input type="submit" value="Save" type="submit">
</form>
</body>
</html>

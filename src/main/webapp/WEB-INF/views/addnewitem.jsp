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

<body>
<h1>Add New Item Form</h1>
<p>
    <a href="/">Back to homepage</a>
    <br>
</p>
<fieldset>
    <legend>Add Item</legend>
    <form action="addItem" method="post">
        <label>Name:</label><input name="itemName" required>*<br>
        <label>Description:</label><input name="itemDescription"><br>
        <label>Price:</label><input name="itemPrice" required>*<br>
        <label>Quantity:</label><input name="itemQuantity" required>*<br>
        <br>
        <input type="submit" value="Save" type="submit">
    </form>
</fieldset>
<a href="itemsadmin">See Item List</a>
</body>
</html>

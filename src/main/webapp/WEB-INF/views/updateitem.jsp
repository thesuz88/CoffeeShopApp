<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 8/1/2017
  Time: 09:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Update Item</title>
</head>
<body>
<h1>Update Item Form</h1>
<a href="/">Back to homepage</a>
<br>
<fieldset>
    <legend>Update Item</legend>
    <form action="update" method="post">
        <label>Name:</label><input type="text" name="itemName" value="${itemName}" required>*<br>
        <label>Description:</label><input type="text" name="itemDescription" value="${itemDescription}"><br>
        <label>Price:</label><input type="text" name="itemPrice" value="${itemPrice}"required>*<br>
        <label>Quantity:</label><input type="text" name="itemQuantity" value="${itemQuantity}"required>*<br>
        <br>
        <input type="submit" value="Save">
    </form>
</fieldset>
</body>
</html>

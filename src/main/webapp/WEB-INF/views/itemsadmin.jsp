<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 7/31/2017
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<html>
<head>
    <title>Items Admin</title>
</head>
<body>
<h1>Items</h1>
<table>
    <tr>
        <th>Item ID</th>
        <th>Item Name</th>
        <th>Item Description</th>
        <th>Item Price</th>
        <th>Item Quantity</th>

    </tr>
    <c:forEach items="${listItems}" var="items">
        <tr>
            <td>${items.itemsId}</td>
            <td>${items.itemName}</td>
            <td>${items.description}</td>
            <td>${items.price}</td>
            <td>${items.quantity}</td>
        </tr>
    </c:forEach>
</table>
<br>
<br>
<form>
    <button>Add New Item</button>
</form>
</body>
</html>

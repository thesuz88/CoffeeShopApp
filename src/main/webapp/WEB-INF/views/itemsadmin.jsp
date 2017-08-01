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
<table border="1">
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
            <td><a href="updateItem?id=${items.itemsId}">Edit</a> </td>
            <td><a href="delete?id=${items.itemsId}" onclick="return areYouSure()" > Delete </a></td>
        </tr>
    </c:forEach>
</table>
<br>
<br>
<a href="/getNewItem">Add New Item</a>

<script>

    function areYouSure(){
        confirm("Are you sure that you want to delete this item?")
    }

</script>

</body>
</html>

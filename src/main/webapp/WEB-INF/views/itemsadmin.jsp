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

<table>
    <c:forEach items="${listItems}" var="items">
    <tr>
        <td>${items.getItemsId}</td>
        <td>${items.getItemName}</td>
        <td>${items.getDescription}</td>
        <td>${items.getPrice}</td>
        <td>${items.getQuantity}</td>
    </tr>
    </c:forEach>
</table>
</body>
</html>

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
    <form action="update" method="post">
        Name:<input type="text" name="itemName" value="${itemName}"><br>
        Description:<input type="text" name="itemDescription" value="${itemDescription}"><br>
        Price:<input type="text" name="itemPrice" value="${itemPrice}"><br>
        Quantity:<input type="text" name="itemQuantity" value="${itemQuantity}"><br>
        <input type="submit" value="Save">
    </form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 8/2/2017
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<fieldset>
    <legend>User Login</legend>
    ${invalid}
    <form action="loginUser" method="post">
        <label>User Name:</label><input name="enteredEmail" placeholder="registered email"><br>
        <label>Password:</label><input type="password" name="enteredPassword" placeholder="user password"><br>
        <input type="submit" name="Submit">
    </form>

</fieldset>
</body>
</html>

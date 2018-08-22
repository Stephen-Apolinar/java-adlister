<%--
  Created by IntelliJ IDEA.
  User: stephenapolinar
  Date: 8/21/18
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Name Form</title>
</head>
<body>
<h1>Please Log in</h1>
<form action="/name" method="POST">
    <div class="form-group">
        <label for="name">Username</label>
        <input id="name" name="name" type="text">
    </div>
    <input type="submit" value="Log In">
</form>

</body>
</html>

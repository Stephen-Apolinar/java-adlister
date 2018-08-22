<%--
  Created by IntelliJ IDEA.
  User: stephenapolinar
  Date: 8/21/18
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Here Is Your Favorite Color</title>

    <style>
        body {
            background-color: ${color};
        }
    </style>
</head>
<body>
<h1>Please Enter Your Favorite color</h1>
<form action="/color-picker" method="GET">
    <div class="form-group">
        <label for="color">Color</label>
        <input id="color" name="color" type="color">
    </div>
    <input type="submit" value="submit">
</form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: stephenapolinar
  Date: 8/21/18
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Please Enter A Number</h1>
<form action="/guess" method="GET">
    <div class="form-group">
        <label for="guess">Number</label>
        <input id="guess" name="guess" type="number" min="1" max="100">
    </div>
    <input type="submit" value="submit">
</form>

<h1>${higher}</h1>
<h1>${lower}</h1>


</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: stephenapolinar
  Date: 8/20/18
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1>Please Log in</h1>
<form action="/login.jsp" method="POST">
    <div class="form-group">
        <label for="username">Username</label>
        <input id="username" name="username" type="text">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input id="password" name="password" type="password">
    </div>
    <input type="submit" value="Log In">
</form>

</body>
</html>

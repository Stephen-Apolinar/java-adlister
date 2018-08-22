<%--
  Created by IntelliJ IDEA.
  User: stephenapolinar
  Date: 8/22/18
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Products</title>
</head>
<body>
<h1>Here are all the products:</h1>

<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h2>${ad.id}</h2>
        <p>Title:  ${ad.title}</p>
        <p>Description ${ad.description}</p>
        <p>User ID: ${ad.userId}</p>
    </div>
</c:forEach>

</body>
</html>

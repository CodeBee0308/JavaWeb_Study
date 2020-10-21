<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/20
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        pageContext.setAttribute("key","pageContext");
        request.setAttribute("key","request");
        session.setAttribute("key","session");
        application.setAttribute("key","application");
    %>

    ${ applicationScope.key }<br/>
    ${ sessionScope.key }
</body>
</html>

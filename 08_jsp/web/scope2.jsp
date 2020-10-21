<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/17
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scope2页面</title>
</head>
<body>
<h1>Scope2页面</h1>

pageContext内置对象：<%=pageContext.getAttribute("key")%><br/>
request内置对象：<%=request.getAttribute("key")%><br/>
session内置对象：<%=session.getAttribute("key")%><br/>
application内置对象：<%=application.getAttribute("key")%><br/>

</body>
</html>

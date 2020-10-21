<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/19
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP页面b</title>
</head>
<body>


<%
    // 往四个域对象中保存相同key值的数据
    pageContext.setAttribute("key","pageContext");
    request.setAttribute("key","request");
    session.setAttribute("key","session");
    application.setAttribute("key","application");

%>
    表达式标签输出的值为：<%= pageContext.getAttribute("key") == null ? "" : pageContext.getAttribute("key") %>
    EL表达式输出的值为：${key}
</body>
</html>

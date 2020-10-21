<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/17
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输出九九乘法表</title>
</head>
<body>
<%-- 在 jsp 页面中输出九九乘法口诀表 --%>
<h1 align="center">九九乘法口诀表</h1>
<table width="650px" align="center">
    <%
        for (int i = 1; i < 10; i++) {
    %>
    <tr>
        <%

            for (int j = 1; j <= i; j++) {
    %>
                <td><%= j + "*" + i + "=" + (i * j)%></td>
        <%
            }
        %>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/20
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试页面</title>
</head>
<body>
    保存域数据之前：${ requestScope.abc }<br/>
    <c:set scope="request" var="abc" value="abcValue"/>
    保存域数据之后：${ requestScope.abc }

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 夏晓峰
  Date: 2020/10/20
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    参数username的值为：${ param.username }<br/>
    参数password的值为：${ param.password }<br/>
    参数hobby的值为:${ paramValues.hobby[0] }、${ paramValues.hobby[1] }、${ paramValues.hobby[2] }<br/>
    <hr/>
    获取请求头中的User-Agent信息:${ header["User-Agent"] }<br/>
    获取请求头中的Connection信息:${ header.Connection }<br/>
    获取请求头中的User-Agent信息:${ headerValues["User-Agent"][0] }<br/>
</body>
</html>
